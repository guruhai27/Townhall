sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'guru/emp/employeedetails/test/integration/FirstJourney',
		'guru/emp/employeedetails/test/integration/pages/EmployeeSetList',
		'guru/emp/employeedetails/test/integration/pages/EmployeeSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeSetList, EmployeeSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('guru/emp/employeedetails') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeSetList: EmployeeSetList,
					onTheEmployeeSetObjectPage: EmployeeSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);