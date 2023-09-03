/**
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
        Model as text 
          Make as text 
          Price as currency 
          
NOw we need to access here in VSCode

*/

Vehicle__c v1 = new Vehicle__c();
v1.Year__c = 2023;
v1.Make__c = 'Tesla';
v1.Model__c = 'X';
V1.Price__c = 100000;


List<Vehicle__c> carList = new List <Vehicle__c>();
//add  v1 into this list 
carList.add(v1);
//add 2 more vehicles with make and price filled up 
carList.add(new Vehicle__c(Make__c = 'Toyota', Model__c = 'Venza', Price__c = 35000));
carList.add(new Vehicle__c(Make__c = 'Honda', Model__c = 'HCR', Price__c = 32000));
System.debug(carList);
// insert this into Salesforce 
upsert carList;