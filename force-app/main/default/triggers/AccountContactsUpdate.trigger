trigger AccountContactsUpdate on Account (after update) {

// if phone number of Account is updated
// update all the related contacts phone number field 

//1. Create a Set<Id>  to store only those Accounts that entered the Trigger with phone number updated 
Set<Id> accIds = new Set<Id>();
 for (Account each: Trigger.new){
    if (each.phone != Trigger.oldMap.get(each.Id).Phone){
        accIds.add(each.Id);
    }
 }
 // if no phone number change for any of the accounts that entered the trigger 
 // then the set will be empty, no point of running the rest of the code
 // how to get out of the trigger earlier  ==> return keyword 

 if (accIds.isEmpty()){
   System.debug('NO ACCOUNT PHONE NUMBERS CHANGED !!!');
   return;// this will end this trigger execution here and will not proceed to exit 
 }
 // 2. Get All the contacts belong to those Account 
 List<Contact> allContacts = [SELECT Name, AccountId, Phone FROM Contact WHERE AccountID IN :accIds];

 // if non of those Accounts has child contacts then do not proceed to next 
 if (allContacts.isEmpty()){
   System.debug('NO CONTACTS FOUND UNDER THESE ACCOUNT !!');
   return;
 }

 //3. Update the contact phone number with Account phone Number 
 for (Contact each: allContacts){
    each.Phone = Trigger.newMap.get(each.AccountId).Phone;
 }

 //4.Perform DML to update all Contacts  if it's not empty 
 if (!allContacts.isEmpty()){
   update allContacts; 
 }
}