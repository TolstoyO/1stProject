//create a contact with a last name 
//insert into SalesForce 
// create a vehicle with all fields set to the Id from above contact 
//insert this contact 
Contact con = new Contact(LastName = 'Jon Snow');
insert con;

System.debug(con);
//create a vehicle with all fields
Vehicle__c v1 = new Vehicle__c (Make__c = 'Audi', Model__c = 'A8', Year__c = 2023, Price__c = 100000);
//including Contact id field set to the ID from above contact 

v1.Contact__c = con.Id;
//insert this contact
insert v1;
System.debug('v1 value is : ' + v1); 