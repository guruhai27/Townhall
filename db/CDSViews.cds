namespace townhall.cds;
 
using { guru.db.master } from './datamodel';
 
context CDSViews {
   
    define view![EmployeeData] as
        select from master.employees{
            key nameFirst as![FirstName],
            key nameLast as![LastName],
            phoneNumber as![PhoneNumber],
            email as![Email],
            recvdGoodies as![ReceivedGoodies],
        };
}
