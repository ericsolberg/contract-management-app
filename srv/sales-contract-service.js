const cds = require('@sap/cds');
const { SalesContract } = require('@sap/cloud-sdk-vdm-sales-contract-service');

module.exports = async (srv) => {
    const { SalesContracts, SalesContractItems } = srv.entities;

    srv.on('fetchSalesContracts', async () => {
        try {
            const salesContracts = await SalesContract.requestBuilder()
                .getAll()
                .execute({ destinationName: 'S4HANA_CLOUD' });

            const cdsContracts = salesContracts.map(contract => ({
                SalesContract: contract.salesContract,
                SalesContractType: contract.salesContractType,
                SalesOrganization: contract.salesOrganization,
                DistributionChannel: contract.distributionChannel,
                OrganizationDivision: contract.organizationDivision,
                SalesGroup: contract.salesGroup,
                SoldToParty: contract.soldToParty,
                CreationDate: contract.creationDate,
                CreatedByUser: contract.createdByUser,
                LastChangeDate: contract.lastChangeDate,
                LastChangeDateTime: contract.lastChangeDateTime,
                PurchaseOrderByCustomer: contract.purchaseOrderByCustomer,
                CustomerPurchaseOrderType: contract.customerPurchaseOrderType,
                CustomerPurchaseOrderDate: contract.customerPurchaseOrderDate,
                TotalNetAmount: contract.totalNetAmount,
                TransactionCurrency: contract.transactionCurrency,
                SDDocumentReason: contract.sdDocumentReason,
                PricingDate: contract.pricingDate,
                IncotermsClassification: contract.incotermsClassification,
                IncotermsTransferLocation: contract.incotermsTransferLocation,
                IncotermsLocation1: contract.incotermsLocation1,
                IncotermsLocation2: contract.incotermsLocation2,
                OverallSDProcessStatus: contract.overallSDProcessStatus,
                TotalCreditCheckStatus: contract.totalCreditCheckStatus,
                OverallTotalDeliveryStatus: contract.overallTotalDeliveryStatus,
                OverallSDDocumentRejectionStatus: contract.overallSDDocumentRejectionStatus
            }));

            await cds.transaction(async (tx) => {
                await tx.run(DELETE.from(SalesContracts));
                await tx.run(INSERT.into(SalesContracts).entries(cdsContracts));
            });

            return "Sales contracts fetched and updated successfully";
        } catch (error) {
            console.error('Error fetching sales contracts:', error);
            throw new Error('Failed to fetch sales contracts');
        }
    });
};
