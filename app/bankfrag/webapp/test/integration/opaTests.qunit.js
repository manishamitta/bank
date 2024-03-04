sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bankfrag/test/integration/FirstJourney',
		'bankfrag/test/integration/pages/custList',
		'bankfrag/test/integration/pages/custObjectPage',
		'bankfrag/test/integration/pages/accObjectPage'
    ],
    function(JourneyRunner, opaJourney, custList, custObjectPage, accObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bankfrag') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecustList: custList,
					onThecustObjectPage: custObjectPage,
					onTheaccObjectPage: accObjectPage
                }
            },
            opaJourney.run
        );
    }
);