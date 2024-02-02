namespace employmentstatus;

entity Employee  {
    key emp_id : Integer;
    name       : String(50);
    department : String(30);
    status     : String(20);
}

entity Status {
    key status_id : Integer;
    status : String(20);
}