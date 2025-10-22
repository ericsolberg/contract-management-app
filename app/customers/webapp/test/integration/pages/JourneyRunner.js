sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contractmanagement/customers/customers/test/integration/pages/CustomersList",
	"contractmanagement/customers/customers/test/integration/pages/CustomersObjectPage"
], function (JourneyRunner, CustomersList, CustomersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contractmanagement/customers/customers') + '/test/flpSandbox.html#contractmanagementcustomerscus-tile',
        pages: {
			onTheCustomersList: CustomersList,
			onTheCustomersObjectPage: CustomersObjectPage
        },
        async: true
    });

    return runner;
});

