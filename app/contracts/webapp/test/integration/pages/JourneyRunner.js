sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contractmanagement/contracts/contracts/test/integration/pages/ValueContractsList",
	"contractmanagement/contracts/contracts/test/integration/pages/ValueContractsObjectPage"
], function (JourneyRunner, ValueContractsList, ValueContractsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contractmanagement/contracts/contracts') + '/test/flpSandbox.html#contractmanagementcontractscon-tile',
        pages: {
			onTheValueContractsList: ValueContractsList,
			onTheValueContractsObjectPage: ValueContractsObjectPage
        },
        async: true
    });

    return runner;
});

