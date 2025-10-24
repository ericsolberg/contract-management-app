using ContractManagementService as service from '../../srv/service';
annotate service.CreditAssessments with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'assessmentDate',
                Value : assessmentDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'creditScore',
                Value : creditScore,
            },
            {
                $Type : 'UI.DataField',
                Label : 'riskLevel',
                Value : riskLevel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'creditStatus',
                Value : creditStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'assessmentNotes',
                Value : assessmentNotes,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvedLimit',
                Value : approvedLimit,
            },
        ],
    },
    UI.FieldGroup #ProspectReportGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : prospectReport,
                Label : 'Prospect Report',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProspectReportFacet',
            Label : 'Prospect Report',
            Target : '@UI.FieldGroup#ProspectReportGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'assessmentDate',
            Value : assessmentDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'creditScore',
            Value : creditScore,
        },
        {
            $Type : 'UI.DataField',
            Label : 'riskLevel',
            Value : riskLevel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'creditStatus',
            Value : creditStatus,
        },
        {
            $Type : 'UI.DataField',
            Label : 'assessmentNotes',
            Value : assessmentNotes,
        },
    ],
);

annotate service.CreditAssessments with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Customers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'customerName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'customerNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'phone',
            },
        ],
    }
};

annotate service.CreditAssessments with {
    contract @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ValueContracts',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contract_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contractNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contractTitle',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'contractValue',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'totalSpend',
            },
        ],
    }
};

annotate service.CreditAssessments with {
    contractEvent @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ContractEvents',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contractEvent_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'eventType',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'eventDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'oldValue',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'newValue',
            },
        ],
    }
};
