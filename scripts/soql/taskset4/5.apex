//Task 5:  Apex SOQL :
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
//Get all the Cases with no Contact association (ContactId is empty)
//and store it in the list called orphanCases. 
//Add All the orphanCases under Contact with name Super Jon.

Id conId =[SELECT Id   FROM Contact   WHERE Name = 'Super Jon' LIMIT 1].Id;

List<Case> orphanCases =[SELECT  Id   FROM Case   WHERE ContactId = null];
for(Case each : orphanCases) {
 each.ContactId = conId;
}
update orphanCases;