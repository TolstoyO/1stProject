@isTest
private class OverdueOppProcessorTest {
    @TestSetup
    static void createTestData(){
        Utils.getManyOpps('Test', 100, true);
        
    }
    @isTest
    static void testBatchCloseOpportunities(){
        //you can't have more than 1 batch in the test 
        //make sue your total test record fall into single batch 
    Test.startTest();
    OverdueOppProcessor ovp = new OverdueOppProcessor();
    Database.executeBatch(ovp, 100);
    // the momnet this line finish executing 
    //async codes will be forced to run right away
    Test.stopTest();
    //Assert 
    //All 100 records should have closed Lost status 
    //[SELECT COUNT(Id) FROM Opportunity WHERE StageName='Closed Lost']
    List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE StageName ='Closed Lost'];
    Assert.areEqual(100, opps.size());
    }
    
}