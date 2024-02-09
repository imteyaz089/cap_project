using ManageEmployee as service from '../../srv/Employee-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>EmployeeId}',
            Value : emp_id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Department}',
            Value : department,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Status}',
            Value : status,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'ManageEmployee.Terminate',
            Label : 'Terminate',
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emp_id',
                Value : emp_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department',
                Value : department,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Employee Master',
            ID : 'EmployeeMaster',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Employee Details',
                    ID : 'EmployeeDetails',
                    Target : '@UI.FieldGroup#EmployeeDetails',
                },],
        },]
);
annotate service.Employee with @(
    UI.SelectionFields : [
        emp_id,
        status,
    ]
);
annotate service.Employee with {
    emp_id @Common.Label : '{i18n>EmployeeId}'
};
annotate service.Employee with {
    status @Common.Label : '{i18n>Status}'
};
annotate service.Employee with @(
    UI.FieldGroup #EmployeeDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>Name}',
            },{
                $Type : 'UI.DataField',
                Value : emp_id,
            },{
                $Type : 'UI.DataField',
                Value : department,
                Label : '{i18n>Department}',
            },{
                $Type : 'UI.DataField',
                Value : status,
            },],
    }
);
annotate service.Employee with {
    status @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status,
                    ValueListProperty : 'status',
                },
            ],
            Label : 'Status',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Employee with @(
    UI.HeaderInfo : {
        TypeName : 'Employee',
        TypeNamePlural : 'Employees',
        Title : {
            $Type : 'UI.DataField',
            Value : emp_id,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeImageUrl : 'sap-icon://employee',
    }
);
