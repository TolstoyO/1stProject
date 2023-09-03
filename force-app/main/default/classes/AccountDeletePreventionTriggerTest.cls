@isTest
public class  AccountDeletePreventionTriggerTest {
    @isTest
    static void testDeleteAccountWithoutOpps(){
    //Arrange
    List<Account> accList = Utils.createAccountsWithOpps(2, 0);
        //Act /DElete accList and save the results for inspection
        Test.startTest();
        Database.DeleteResult[] result = Database.delete(accList, false);
        Test.stopTest();
        //Asert.areEqual(expected, actual)
        //check the account deletion was successful for both records 
        Assert.isTrue(result[0].isSuccess());
        Assert.isTrue(result[1].isSuccess());

    }

    @isTest 
    static void testDeleteAccountWithOpps(){
    //Arrange
    List<Account> accList = Utils.createAccountsWithOpps(2, 3);

    //Act /DElete accList and save the results for inspection
    Test.startTest();
    Database.DeleteResult[] result = Database.delete(accList, false);
    Test.stopTest();

    //Assert // 'CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!'
    Assert.isFalse(result[0].isSuccess());
    String expectedErrorMsg = 'CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!';
    //assert the error message match as expected 
    //in order to get the error message we can use 
    //yourSingleResult.getError()[0].getMessage()
    Assert.areEqual(expectedErrorMsg, result[0].getErrors()[0].getMessage());
    Assert.areEqual(expectedErrorMsg, result[1].getErrors()[0].getMessage());
   
    }
}


