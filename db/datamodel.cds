namespace guru.db;
 
using { cuid } from '@sap/cds/common';
using { guru.common } from './commons';
 
context master {

    entity employees: cuid {
        nameFirst: String(40);
        nameLast: String(40);
        phoneNumber: common.PhoneNumber;
        email: common.Email;
        recvdGoodies: String(3);
    }
}
 