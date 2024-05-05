using CatalogService as service from '../../srv/CatalogService';

annotate service.EmployeeSet with @(
    UI.SelectionFields:[
        nameFirst,
        // nameLast,
        email,
        recvdGoodies
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : nameFirst,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : nameLast,
        // },
        {
            $Type : 'UI.DataField',
            Value : phoneNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : email,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : workLocation,
        // },

        {
            $Type : 'UI.DataField',
            Value : RvdGoodies,
            // CriticalityRepresentation : recvdGoodies,
            Criticality: StatusCode
        ,
            Label : 'Received Goodies'},        
    ],
        UI.HeaderInfo:{
        TypeName: 'Employee',
        TypeNamePlural: 'Employee List',
        Title: {Value : nameFirst, Label: 'Employee Name'},
        // Description: {Value: ""},
        ImageUrl: 'https://dxc.com/content/dam/dxc/projects/dxc-com/us/images/about-us/newsroom/logos-for-media/vertical/DXC%20Logo_Purple+Black%20RGB.png'
    },

        UI.Facets:[
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Participant Info',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.Identification',
                    Label : 'Update Employee Details',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#Spiderman',
                    Label: 'Update'
                },
                // {
                //     $Type : 'UI.ReferenceFacet',
                //     Target : '@UI.FieldGroup#Superman',
                //     Label: 'Update'
                // },
            ],
        },
        // {
        //     $Type : 'UI.ReferenceFacet',
        //     Target : 'Items/@UI.LineItem',
        //     Label: 'PO Items'
        // },
    ],
    UI.Identification: [
        {
            $Type : 'UI.DataField',
            Value : nameFirst,            
            Label : 'Employee Name'
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : phoneNumber,
        // },
    ],
    UI.FieldGroup #Spiderman:{
        Label : 'Employee Details',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : phoneNumber,
                Label : 'Phone No'
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : 'Email'
            },
            {
                $Type : 'UI.DataField',
                Value : recvdGoodies,
                Criticality : StatusCode
            },
        ],
    },
    //     UI.FieldGroup #Superman:{
    //     Label: 'Update',
    //     Data : [
    //         {
    //             $Type : 'UI.DataField',
    //             Value : RvdGoodies,
    //             Label : 'Received butter'
    //         },
    //     ],
    // }
 
);

annotate service.CheckSet with {
    CHECK @Common.Text : {
            $value : recvdGoodies,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.EmployeeSet with {
    recvdGoodies @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CheckSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : recvdGoodies,
                    ValueListProperty : 'CHECK', 
                },

            ],
            Label : 'Received Goodies',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.EmployeeSet with {
    nameFirst @Common.FieldControl : #Mandatory
};
annotate service.EmployeeSet with {
    email @Common.FieldControl : #Mandatory
};
// //connect that to a field
// annotate service.EmployeeSet with {
//     RvdGoodies @(
//         ValueList.entity: service.CheckSet,
//         Common.Text: recvdGoodies,
//         Common.TextArrangement: #TextOnly
//     );
// };

// //define a value
// @cds.odata.valuelist
// annotate service.CheckSet with {

//   recvdGoodies @(
//     Common: {
//       Text: CHECK, // TextArrangement: #TextOnly,
//       ValueList: {
//         Label: 'Goodies Value Help',
//         CollectionPath: 'CheckSet',
//         Parameters: [
//           { $Type: 'Common.ValueListParameterInOut',
//             LocalDataProperty: CHECK,
//             ValueListProperty: 'recvdGoodies'
//           },
//         //   { $Type: 'Common.ValueListParameterDisplayOnly',
//         //     ValueListProperty: 'yesNo'
//         //   }
//       ]
//       }
//     },
//   );
// }

// annotate service.EmployeeSet with {
//     recvdGoodies @Common.FieldControl : #Mandatory
// };
// annotate service.EmployeeSet with {
//     recvdGoodies @UI.MultiLineText : true
// };
// annotate service. with {
    // recvdGoodies @(
    //     ValueList.entity: service.ProductSet,
    //     Common.Text: PRODUCT_GUID.DESCRIPTION,
    //     Common.TextArrangement: #TextOnly
    // );
// };