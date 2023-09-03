/**
DML : Data Manipulation Language 
 allow you to interact with Salesforce Database of your org 
    insert
    update
    upsert
    delete
    undelete
    merge

    https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_dml
 */

 // Create a variable with sObject type of Account 
 // assign the Name field value 
 
 Account a1 = new Account(Name = 'Acc from Apex'); 
 System.debug('a1 value is : ' + a1); 
 // insert the account into Salesforce org
 insert a1 ; 
 System.debug('a1 value after insert is : ' + a1); 
 // print out the Id of the a1 
 System.debug('a1.Id value is : ' + a1.Id); 
 
 // change the name of a1 to -> Updated Name from Apex
 a1.Name = 'Updated Name from Apex'; 
 // update the Billing State field 
 a1.BillingState = 'VA' ; 
 // use update DML operation to update the record that already in Salesforce
 update a1 ; 
 System.debug('a1 value is : ' + a1); 

 /**
/**
 DML Practice

Create List of Account 
add 5 items with below Name 
Apex Acc 1 
Apex Acc 2 
Apex Acc 3 
Apex Acc 4 
Apex Acc 5 

insert this List 

update the annual revenue field with 
random number between 0, 100000

let this update reflect in salesforce 
update using the list in one shot  

// Optionally Delete them all
 */

 List<Account> accList = new  List<Account>() ; 

//  for(Integer i=1; i<=5 ;i++) {

//      // Apex Acc i
//      // create account instance
//      Account a = new Account(); 
//      a.Name = 'Apex Acc ' + i ; 
//      // add that to the list 
//      accList.add(a) ; 
    
//  }

 for(Integer i=1; i<=5 ;i++) {
     // add that to the list 
     accList.add(  new Account(Name = 'Apex Acc '+i )   ) ; 
    
 }

 System.debug('accList value BEFORE is : ' + accList); 
 insert accList ; 
 System.debug('accList value AFTER is : ' + accList); 


// 1. update the annual revenue field with 100000
// 2. update the annual revenue field with random number 0--100000
for(Account each : accList) {

    each.AnnualRevenue = Math.round(Math.random()*100000 ); 

}
System.debug('accList value after update is : ' + accList); 
// update it in Salesforce org using update dml statement 
update accList ; 

// Create a new empty List of Account called vipAccounts 
// loop through each item in your accList  
//      if the annual revenue is greater than 50000
//      update Description field to IMPORTANT ACCOUNT 
//      add this account to vipAccounts List 
List<Account> vipAccountList = new List<Account>() ; 

for(Account each : accList) {
    if( each.AnnualRevenue > 50000 ){
        each.Description = 'IMPORTANT ACCOUNT' ;
        vipAccountList.add( each ); 
    }
}
System.debug('------------------');
System.debug('vipAccountList value is : ' + vipAccountList); 

// eventually update vipAccounts to reflect this change 
update vipAccountList ; 

// delete them all 
delete accList ; 
// restore them all 
undelete accList ; 