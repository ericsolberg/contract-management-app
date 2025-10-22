sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"contractmanagement/assessments/assessments/test/integration/pages/CreditAssessmentsList",
	"contractmanagement/assessments/assessments/test/integration/pages/CreditAssessmentsObjectPage"
], function (JourneyRunner, CreditAssessmentsList, CreditAssessmentsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('contractmanagement/assessments/assessments') + '/test/flpSandbox.html#contractmanagementassessmentsa-tile',
        pages: {
			onTheCreditAssessmentsList: CreditAssessmentsList,
			onTheCreditAssessmentsObjectPage: CreditAssessmentsObjectPage
        },
        async: true
    });

    return runner;
});

