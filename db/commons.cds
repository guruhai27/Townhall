namespace guru.common;

type PhoneNumber: String(30);
type Email: String(255);
type IDYesno: String(1);
type yesNo: String(3); 

type ReceivedGoodies: String(3) @Common.ValueList : {
    $Type : 'Common.ValueListType',
    CollectionPath : 'CheckSet',
// }{
//     yes = 'Y';
//     no  = 'N';
};

aspect CHECK: {
    CHECK: IDYesno;
};

// type YesNo: String(5) enum{
//     yes = 'Y';
//     no  = 'N';

// };ReceivedGoodies

// aspect Rgoodies: {
//     CHECK: YesNo;
//     // TAX_AMOUNT: AmountT @(title : '{i18n>TaxAmount}');
// };