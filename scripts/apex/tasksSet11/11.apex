/** Create List<Case> with 4 Items with name oldList 
     - with below fields
       - Subject set to Sample Case (1,2,3,4)
     - insert into Salesforce
   - Create a Map<ID, Case> from above List call it oldMap
     - It should contain ID of case as key, the Case itself as value
   - Print out the oldList variable 
     - Observe It should be the List with ID generated
   - Print out the oldMap  variable 
     - Observe key is ID and value is Record itself

   - Create a new List<Case> called newList
     - Copy everything from oldList into newList in one shot
   - Now Iterate over your newList with 4 copied Items above
     - Update the Subject field value to 
       - Whatever is the current Value followed by string  New
       - So it will Sample Case (1,2,3,4) New
     - Issue a DML statement to reflect the changes in Salesforce
   - Create a Map<ID, Case> from above List call it newMap
      - It should contain ID of case as key, the Case itself as value

   - Print out the newList variable 
     - Observe It should be the List after the update
   - Print out the newMap  variable 
     - Observe It should be the Map after the update */

List<Case> oldList = new List<Case>();
oldList.add(new Case( Subject = 'SAmple Case 1'));
oldList.add(new Case( Subject = 'SAmple Case 2'));
oldList.add(new Case( Subject = 'SAmple Case 3'));
oldList.add(new Case( Subject = 'SAmple Case 4'));

insert oldList;
//Database.insert(oldList, false);

Map<ID,Case> oldMap = new Map<ID,Case>(oldList);
System.debug(oldList);
System.debug(oldMap);

List<Case> newList = new List<Case>(oldList);
for(Case each: newList){
    each.Subject += ' New';
}
update newList;

Map<ID,Case> newMap = new Map<ID,Case> (newList);
System.debug(newMap);
System.debug('new list  '+ newList);