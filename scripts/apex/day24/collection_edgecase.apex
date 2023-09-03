// store many names  -->> List<String>


// store unique names -->> Set<String>

// set student names and score -->> Map<String, Integer>

// store all the groups ( that contains many names) into a collection

// how to represent one group that have many names-->> List<String>

// how to represent many groups -->> List <List<String>>

List<String> group1Names = new List<String>{'Zhamilia', 'Marina', 'Madina', 'Vita'};
List<String> group2Names = new List<String>{'Ali', 'Hyder', 'Dua', 'Elif'};
List<String> group3Names = new List<String>{'Jon', 'Snow', 'Knows', 'Nothing'};

List< List<String> > groupList = new List <List<String>  > { group1Names, group2Names, group3Names  };
System.debug('groupList value is : ' +groupList);

// accessing the item in the list, we use index and it starts from 0

// what if we want to make it slightly easier to access the group that contains names

// for example if we provide 1 ==> (Zhamilia, Marina, Madina, Vita)
// for example if we provide 2 ==> (Ali, Hyder, Dua, Elif)
// for example if we provide 3 ==> (Jon, Nothing)
// Map<Integer, List<String> >


// for example if we provide group1 ==> (Zhamilia, Marina, Madina, Vita)
// for example if we provide group2 ==> (Ali, Hyder, Dua, Elif)
// for example if we provide group3 ==> (Jon, Nothing)
// Map<String, List<String> >

Account a = new Account (Name = 'Apex INC');
insert a;
//Database.insert(a, false)
a.AnnualRevenue = 900000;
//update a;

List<Account> accList = new List<Account>();
accList.add( new Account( Name = 'Sample Account 1'));
accList.add(a);
//insert the 'Sample Account 1' and update 'Apex Inc' in Salesforce
upsert accList;

//delete this record
delete accList;

//restore the items that deleted
undelete accList;

//Apex Trigger:
/**
 * Apex Trigger events that cause the trigger to execute: 7 events:
 * before insert, after insert, before update, after update, 
 * before delete, after delete, after undelete
 * 
 * Trigger Context Variable: 
 * variables that provide more information about trigger execution 
 * and data we use it in this format Trigger.theVariableName
 * 
 * Trigger.oprationType: return the triggering event (BEFORE_INSERT, AFTER_UPDATE)
 * Trigger.size:  returns the size of records entered the Trigger 
 * 
 * variables that check for the specific event type:
 * Trigger.isBefore
 * Trigger.isAfter
 * Trigger.isInsert
 * TRigger.isUpdate
 * Trigger.isDelete
 * Trigger.isUndelete
 * 
 * variables that provide access to the records that enetred the thrigger
 * 
 * Trigger.new : returns the list of sObjects with the latest field values 
 * availble in events before|after insert, before|after update, after undelete 
 * 
 * Trigger.newMap: returns MAp of ID and sObject with latest field value
 * availbale in events: after insert, before|after update, after undelete
 * 
 * Trigger.old: returns List of sObject with old filed values 
 * availble events: after insert, before|after update, before|after delete
 * 
 * Trigger.oldMap: returns MAp of ID and sObject with old field value
 * availble in events: before|after update, before|after delete
 * 
 * __________________________________________________________________
 * 
 * Since multiple records enter the trigger at the same ti,me, you will always use the Trigger loop 
 * for (yourSObjectType each: Trigger.new ){
 * 
 * }
 * or 
 * for (yourSObjectType each: Trigger.old  ){
 * 
 * }
 * 
 * Adding a custom error message according to certain conditions:
 * - yourSObjectVariable.addError ('Message goes here');
 * - yourSObjectVariable.fieldNAme.addError('this error show up right under fields');
 * this is a way to prevent account record from deletion if some conditions are true
 * 
 * Trigger must have it's own file 
 * the name of your trigger must be the same as the file name 
 * if you rename your trigger, you must rename file to match your trigger name 
 * 
 * trigger theNameOfYourTrigger on YourSObjet (events you listed ) {
 * 
 * }*
 * //this is the end of your trigger, NO CODE SHOULD BE WRITTEN AFTER THIS LINE 
 */
