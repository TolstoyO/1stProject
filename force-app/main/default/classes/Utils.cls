public class Utils {
    /**
    Create a static method that accept lastName and return Contact sObject
     with that lastName  */
     public static Contact getContact (String lName){
        Contact c = new Contact (LastName = lName);
        return c;
     }

     /**
    Create a static method called getContacts  that accept lastName, count of 
    contacts as Integer  and return List of Contact
    with size = the count of contact 
   with  lastName = lastName +1,2,3,4,5  */

   public static List<Contact> getContacts (String lName, Integer count){
      List<Contact> cons = new List<Contact>();
      for(Integer i=1; i<=count; i++){
         cons.add(new Contact(LastName = lName + ' '+ i));
      }
      return cons;
   }

   public static Account insertNewAccount (String accName){
      Account a = new Account(Name = accName);
      try {
         insert a;
         return a;
      }catch(Exception e){
         return null;
      } 
   }

   /**
    * Create a method called getAccountAndContacts
    it will get accoutn and contact as parameters 
    return Account with child contacts created under thi account 
    the conatact last name should be: account name contact + 1,2,3,4,5
    the account and contacts shpould be inserted into Salesforce 
    */

    public static Account getAccountAndContacts (String accName, Integer contactCount){
      Account a = new Account(Name = accName);
      insert a;
      list<Contact> contacts = new List<Contact>();
      for (Integer i =1; i<=contactCount; i++){
         contacts.add(new Contact (LastName= accName+ 'contact '+ i, AccountId = a.Id));

      }
      insert contacts;
      System.debug(contacts);
      return a;
    }

/**
Create a method called getLead
It expect the lastName, and Company
and do Insert as bollean for Parameters 

it create lead with given lastName and copany 
and fill up other fields with default values phone, industry title, leadSource
if not it it will not insert

return the newly created lead
  */

public static Lead getLead(String lName, String company, Boolean doInsert){
 
 Lead l = new Lead(LastName = lName, Company = company);
 l.Phone  = '3456789876';
 l.Industry = 'Technology';
 l.Title = 'Salesforce Developer';
 l.LeadSource ='Web';
 if (doInsert){
   insert l;
 }
 return l;
}

/**
Create a method called getLead
It expect the lastName, and Company
and do Insert as bollean for Parameters 

it create lead with given lastName and copany 
and fill up other fields with default values phone, industry title, leadSource
if not it it will not insert

return the newly created lead
  */

public static List<Lead> getLeads (String lName, String company, Boolean dosInsert, Integer count){
   List<Lead> leadList = new List<Lead>();
   for (Integer i=1; i<=count; i++){
      leadList.add(getLead(lName + i, company + i, false));// because we never insert in the loop
   }
   if (dosInsert){
      insert leadList;
   }
   return leadList;
}

//create a method called getOneOpportunity 
//parametrs:  @param oppName name the opportunity 
// set the value of Date to 7 Days from now 
// set the StageName to Prospecting 
//set the amount to 50000
//@param  doInsert boolean value to decide insert to salesforce or not 
//@return the opportunity created 

public static Opportunity getOneOpportunity(String oppName, Boolean doInsert){
   Opportunity opp = new Opportunity(Name = oppName);
   opp.CloseDate = Date.today()+7;
   opp.StageName = 'Prospecting';
   opp.Amount = 50000;

   if (doInsert){
      insert opp;
   }
return opp;
}

//Create a static method called getManyOpps
// Parameters: 
// @param oppName name of the opportunity 
//set the value to Close to 7 days from now 
// set the StageName to Prospecting 
//set the amount to 50000
// @param count count of opportunity need to be created 
//@param doInseert boolean value to decide into salesforvec or not 
// Return List of the opportunitites with name oppName +

public static List<Opportunity> getManyOpps (String oppName, Integer count, Boolean doInsert){
   List<Opportunity> oppList = new List<Opportunity>();
   for (Integer i=1; i<=count; i++){
      oppList.add(getOneOpportunity(oppName + ' ' + i, false));
   }
   if(doInsert){
      insert oppList;
   }
   return oppList; 
}

//CReate account called insert AccountWithOpps
//@param accName accountName
//@param count count of child opportunity
//opportunity name should be accountName +Opps 1234
//CloseDate 7 days from now 
//StageName Prospecting 

public static Account insertAccountWithOpps(String accName, Integer count, Boolean doInsert){
  
   Account newAcc = insertNewAccount(accName);
//create list of opportunity using the existing method 
// we should not insert yet becuse we need to fillup accountId field
   List<Opportunity> opps = getManyOpps(accName + ' opp' ,count, false);
   //loop through eah opportunity and set the Account field value
   //so this oppportunity will be under the Acoount above 
   for(Opportunity each: opps){
   each.AccountId  = newAcc.Id;
}
   if (doInsert){
    //insert the oppoertunity loist 
    insert opps;
   }
    return newAcc;
}

public static List<Account> createAccountsWithOpps(Integer numAccts, Integer numOppsPerAcct) {
   
      List<Account> accts = new List<Account>();
      for(Integer i=0;i<numAccts;i++) {
          Account a = new Account(Name='TestAccount' + i);
          accts.add(a);
      }
      insert accts;
      List<Opportunity> opps = new List<Opportunity>();
      for (Integer j=0;j<numAccts;j++) {
          Account acct = accts[j];
          // For each account just inserted, add opportunities
          for (Integer k=0;k<numOppsPerAcct;k++) {
              opps.add(new Opportunity(Name=acct.Name + ' Opportunity ' + k,
                                     StageName='Prospecting',
                                     CloseDate=System.today().addMonths(1),
                                     AccountId=acct.Id));
          }
      }
      // Insert all opportunities for all accounts.
      insert opps;
      return accts;
  }
  /**
    * A method that return List of account with Contacts under 
    * @param numAccts 
    * @param numContactsPerAcct 
    * @return  `List<Account>`
    */
   
    public static List<Account> createAccountsWithContacts(Integer numAccts, Integer numContactsPerAcct) {
      List<Account> accts = new List<Account>();
      for(Integer i=0;i<numAccts;i++) {
          Account a = new Account(Name='Cool Account' + (i+1) );
          accts.add(a);
      }
      insert accts;

      List<Contact> contacts = new List<Contact>();
      for (Integer j=0;j<numAccts;j++) {
          Account acct = accts[j];
          // For each account just inserted, add Contacts
          for (Integer k=0;k<numContactsPerAcct;k++) {
              contacts.add(new Contact(AccountId = acct.Id , LastName= acct.Name + ' Contact '+ (k+1)) );
          }
      }
      // Insert all opportunities for all accounts.
      insert contacts;
      return accts;
  }
}
