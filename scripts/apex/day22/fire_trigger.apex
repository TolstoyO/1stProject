List<Account> accList = new List<Account>();
accList.add(    new Account(Name='Sample Account  1', AnnualRevenue=3000000)); 
accList.add(    new Account(Name='Sample Account  2')); 
accList.add(    new Account(Name='Sample Account  3',AnnualRevenue=4000000)); 
accList.add(    new Account(Name='Sample Account  4')); 
insert accList;  // optionally insert this List of Account*/

// Account a2 = new Account(Name='SUPER COOL ACCOUNT');
// insert a2; 

// Contact c1 = new Contact(AccountId = a2.Id   , LastName = 'some last name');
// insert c1

// System.debug('YourValueHere'); 


// // Create a new Book instance with fields 
//Book__c b = new Book__c(Name='Apex Book' );
// // insert as Salesforce record
// insert b ; 

//b.Name = 'Awesome new book for lunch!!' ; 
//update b ; 

String str = 'aBcDeFg' ; 
System.debug( str.toLowerCase().capitalize() );