using contractmanagement from '../db/schema';

service ContractManagementService {
  
  @odata.draft.enabled
  entity Customers as projection on contractmanagement.Customers;
  
  @odata.draft.enabled
  entity ValueContracts as projection on contractmanagement.ValueContracts;
  
  @readonly
  entity CreditAssessments as projection on contractmanagement.CreditAssessments;
  
  @readonly
  entity ContractEvents as projection on contractmanagement.ContractEvents;
  
  @readonly
  entity WorkflowInstances as projection on contractmanagement.WorkflowInstances;
  
  @readonly
  entity ApprovalRequests as projection on contractmanagement.ApprovalRequests;
  
  // Actions for workflow integration
  action triggerInclusionDecision(contractId: UUID) returns String;
  action updateWorkflowStatus(contractId: UUID, status: String) returns String;
  action createCreditAssessment(contractId: UUID, assessmentData: String) returns String;
}