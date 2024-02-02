using  employmentstatus as my from '../db/schema';

service ManageEmployee {

    @odata.draft.enabled
    entity Employee as projection on my.Employee actions {
        action Terminate();
    };

    entity Status as projection on my.Status;

}