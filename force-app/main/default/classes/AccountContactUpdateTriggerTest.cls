@isTest
public class AccountContactUpdateTriggerTest {
   
    @isTest
    static void testContactPhoneupdateIfAccountPhoneUpdate(){
    //arrange 
    List<Account> accList = Utils.createAccountsWithContacts(2, 3);

    //act
    accList[0].Phone = '1234567890';
    accList[1].Phone = '0987654321';
    Test.startTest();
    update accList;
    Test.stopTest();


    //assert write a SOQL to get the contacts under accList
    List<Contact> allContacts = [SELECT Phone, Account.Phone FROM Contact WHERE AccountId = :accList ];
    for(Contact each: allContacts){
        Assert.areEqual(each.Account.Phone, each.Phone);
    }
 }
}