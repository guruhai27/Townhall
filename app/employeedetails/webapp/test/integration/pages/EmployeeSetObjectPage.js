sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'guru.emp.employeedetails',
            componentId: 'EmployeeSetObjectPage',
            contextPath: '/EmployeeSet'
        },
        CustomPageDefinitions
    );
});