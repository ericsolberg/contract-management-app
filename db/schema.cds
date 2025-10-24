using { Currency, managed, cuid } from '@sap/cds/common';

namespace contractmanagement;

entity Customers : cuid, managed {
  customerName     : String(100) not null;
  customerNumber   : String(20) not null;
  email           : String(100);
  phone           : String(20);
  creditRating    : String(10) default 'PENDING';
  riskCategory    : String(20) default 'STANDARD';
  totalCreditLimit : Decimal(15,2);
  
  // Associations
  valueContracts  : Association to many ValueContracts on valueContracts.customer = $self;
  creditAssessments : Association to many CreditAssessments on creditAssessments.customer = $self;
}

entity ValueContracts : cuid, managed {
  contractNumber   : String(20) not null;
  contractTitle    : String(200) not null;
  contractValue    : Decimal(15,2) not null;
  totalSpend      : Decimal(15,2) default 0;
  remainingValue  : Decimal(15,2);
  startDate       : Date not null;
  endDate         : Date not null;
  status          : String(20) default 'DRAFT';
  workflowStatus  : String(30) default 'PENDING_INCLUSION_DECISION';
  includeInCreditCheck : Boolean default true;
  exclusionReason : String(500);
  
  // Associations
  customer        : Association to Customers not null;
  contractEvents  : Composition of many ContractEvents on contractEvents.contract = $self;
  workflowInstances : Composition of many WorkflowInstances on workflowInstances.contract = $self;
}

entity CreditAssessments : cuid, managed {
  assessmentDate  : Date not null;
  creditScore     : Integer;
  riskLevel       : String(20);
  creditStatus    : String(20) default 'PENDING';
  assessmentNotes : String(1000);
  approvedLimit   : Decimal(15,2);
  prospectReport  : String;
  
  // Associations
  customer        : Association to Customers not null;
  contract        : Association to ValueContracts;
  contractEvent   : Association to ContractEvents;
}

entity ContractEvents : cuid, managed {
  eventType       : String(50) not null;
  eventDescription : String(500);
  oldValue        : String(200);
  newValue        : String(200);
  eventDate       : DateTime not null;
  
  // Associations
  contract        : Association to ValueContracts not null;
  creditAssessment : Association to CreditAssessments;
}

entity WorkflowInstances : cuid, managed {
  workflowType    : String(50) not null;
  processInstanceId : String(100);
  status          : String(30) default 'ACTIVE';
  startedAt       : DateTime not null;
  completedAt     : DateTime;
  
  // Associations
  contract        : Association to ValueContracts not null;
  approvalRequests : Composition of many ApprovalRequests on approvalRequests.workflowInstance = $self;
}

entity ApprovalRequests : cuid, managed {
  requestType     : String(50) not null;
  requestReason   : String(500);
  requestedBy     : String(100);
  approverEmail   : String(100);
  status          : String(20) default 'PENDING';
  approvedAt      : DateTime;
  approverComments : String(1000);
  
  // Associations
  workflowInstance : Association to WorkflowInstances not null;
}
