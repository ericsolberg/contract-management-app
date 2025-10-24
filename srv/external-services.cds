namespace salescontract;

entity SalesContracts {
  key SalesContract: String;
  SalesContractType: String;
  SalesOrganization: String;
  DistributionChannel: String;
  OrganizationDivision: String;
  SalesGroup: String;
  SoldToParty: String;
  CreationDate: Date;
  CreatedByUser: String;
  LastChangeDate: Date;
  LastChangeDateTime: DateTime;
  PurchaseOrderByCustomer: String;
  CustomerPurchaseOrderType: String;
  CustomerPurchaseOrderDate: Date;
  TotalNetAmount: Decimal;
  TransactionCurrency: String;
  SDDocumentReason: String;
  PricingDate: Date;
  IncotermsClassification: String;
  IncotermsTransferLocation: String;
  IncotermsLocation1: String;
  IncotermsLocation2: String;
  OverallSDProcessStatus: String;
  TotalCreditCheckStatus: String;
  OverallTotalDeliveryStatus: String;
  OverallSDDocumentRejectionStatus: String;
}

entity SalesContractItems {
  key SalesContract: String;
  key SalesContractItem: String;
  Material: String;
  SalesContractItemCategory: String;
  SalesContractItemText: String;
  PurchaseOrderByCustomer: String;
  MaterialGroup: String;
  RequestedQuantity: Decimal;
  RequestedQuantityUnit: String;
  ItemGrossWeight: Decimal;
  ItemNetWeight: Decimal;
  ItemWeightUnit: String;
  ItemVolume: Decimal;
  ItemVolumeUnit: String;
  TransactionCurrency: String;
  NetAmount: Decimal;
  MaterialPricingGroup: String;
  Subtotal1Amount: Decimal;
  Subtotal2Amount: Decimal;
  Subtotal3Amount: Decimal;
  Subtotal4Amount: Decimal;
  Subtotal5Amount: Decimal;
  Subtotal6Amount: Decimal;
}

service SalesContractService {
  entity SalesContracts as projection on salescontract.SalesContracts;
  entity SalesContractItems as projection on salescontract.SalesContractItems;
}
