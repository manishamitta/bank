sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bankfrag',
            componentId: 'accObjectPage',
            contextPath: '/cust/cust_to_acc'
        },
        CustomPageDefinitions
    );
});