const cds = require('@sap/cds');

module.exports = cds.service.impl( async srv => {

    const{Employee} = srv.entities;

    srv.on('Terminate','Employee', async req =>{

        const emp_id = req.params[0].emp_id;
        const {status} = await SELECT.one(Employee,['status']).where({emp_id : emp_id});
        if (status == 'Active') {
            const result = await UPDATE(Employee).set({status :'Terminated'}).where({emp_id : emp_id});            

        }
        else {
            req.error( 400, 'This action can be executed on Active Employee only' );
        }
        return Employee;
    });

        
})