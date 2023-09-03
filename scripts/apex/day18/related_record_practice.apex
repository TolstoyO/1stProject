/**
Create an account with below fields 
NAme, AnnualRevenue, industry insert into your orrgg

Create an Opportunity under this account with required fields 
filled up insert this record 

Using your Opportunity variable access record field and print it out 
 */

 Account a1 = new Account(Name = 'SF TDX23',
                          AnnualRevenue = 10000000, 
                          Industry = 'Technology'); 
insert a1;


//[Name, StageName, CloseDate]
Opportunity o1 = new Opportunity();
o1.AccountId = a1.Id;
o1.Name = 'TDX23 Opps';
o1.StageName = 'Prospecting';
o1.CloseDate = Date.today()+7;
insert o1 ;

//use o1 to access AnnualRevenue field of a1 Account
//Decimal rev= o1.Account.AnnualRevenue;
//System.debug('AnnualReveue of Apportunity parent Accont  value is : ' + rev ); 
//use o1 to access Industry field of a1 Account  

//create 5 cases under this account with below subject 
// TDX Case 1,2,3,4,5

List<Case> caseList = new List <Case>();

for(Integer i=1; i<=5 ;i++) {
    caseList.add(new Case(AccountId = a1.Id, Subject='TDX Case '+ i));
}

System.debug(caseList);
insert caseList;