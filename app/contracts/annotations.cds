using ContractManagementService as service from '../../srv/service';
annotate service.ValueContracts with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'contractNumber',
                Value : contractNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contractTitle',
                Value : contractTitle,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contractValue',
                Value : contractValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'totalSpend',
                Value : totalSpend,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remainingValue',
                Value : remainingValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'startDate',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'endDate',
                Value : endDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'workflowStatus',
                Value : workflowStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'includeInCreditCheck',
                Value : includeInCreditCheck,
            },
            {
                $Type : 'UI.DataField',
                Label : 'exclusionReason',
                Value : exclusionReason,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'contractNumber',
            Value : contractNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contractTitle',
            Value : contractTitle,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contractValue',
            Value : contractValue,
        },
        {
            $Type : 'UI.DataField',
            Label : 'totalSpend',
            Value : totalSpend,
        },
        {
            $Type : 'UI.DataField',
            Label : 'remainingValue',
            Value : remainingValue,
        },
    ],
);

annotate service.ValueContracts with {
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

annotate service.SalesContracts with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Sales Contract',
            Value : SalesContract,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sales Contract Type',
            Value : SalesContractType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sales Organization',
            Value : SalesOrganization,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sold To Party',
            Value : SoldToParty,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Creation Date',
            Value : CreationDate,
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Sales Contract',
                Value : SalesContract,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sales Contract Type',
                Value : SalesContractType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sales Organization',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Distribution Channel',
                Value : DistributionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Organization Division',
                Value : OrganizationDivision,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sold To Party',
                Value : SoldToParty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Creation Date',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created By User',
                Value : CreatedByUser,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralInformationFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
    ]
);
