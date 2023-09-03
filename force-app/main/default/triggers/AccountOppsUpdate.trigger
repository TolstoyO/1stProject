trigger AccountOppsUpdate on Account (after update) {

//if accountis updated to be inactive (ACtive__c set to NO)
//update all the 'Open' opportunities to 'Closed Lost'

// 1. Create a set<ID> to store only those Accounts ID
//that entered the Trigger with active field updated to No
Set<Id> accIds = new Set<Id>();
for (Account each: Trigger.new){
    if (each.Active__c != Trigger.oldMap.get(each.Id).Active__c && each.Active__c == 'No'){
        //check if Active_c field has changed and changed to NO
        accIds.add(each.Id);
    }
}

//if no accounts that entered the trigger has Active_c fileds changed to no 
//the set is empty, get out of the trigger, don't proceed
if (accIds.isEmpty()){
    return; 
}
//2. Get all the Open Opps belong to those Accounts 

 List <Opportunity>  toBeUpdatedOppps = [SELECT Name, AccountId, StageName FROM Opportunity
                                         WHERE IsClosed = FALSE AND AccountId IN :accIds ];

//3. Update all open Opps above StageNAme to ClosrdLost 
 for (Opportunity each: toBeUpdatedOppps){
    each.StageName = 'Closed Lost';
 }

//4. Perform DMl t oupdated in Salesforce 
if (!toBeUpdatedOppps.isEmpty()){
update toBeUpdatedOppps; 

}

}