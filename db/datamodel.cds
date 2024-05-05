namespace guru.db;
 
using { cuid } from '@sap/cds/common';
using { guru.common } from './commons';
 
context master {

    entity employees: cuid {
        nameFirst: String(40)@(title : '{i18n>FIRST_NAME}');
        // nameLast: String(40);
        phoneNumber: common.PhoneNumber@(title : '{i18n>PHONE_NUMBER}');
        email: common.Email@(title : '{i18n>EMAIL}');
        // recvdGoodies: common.ReceivedGoodies;
        recvdGoodies: String (6)@(title : '{i18n>RECEIVED_GOODIES}'); 
        // common.ReceivedGoodies;
        // common.YesNo;
        //  String(1);
    }

    entity goodies: common.CHECK {
        recvdGoodies: String(3);
    }
}
 