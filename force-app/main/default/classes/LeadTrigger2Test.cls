@IsTest
private  class LeadTrigger2Test {
    // i have 2 or more test methods that need same data inserted 
    //and I want to only set it up once istead of repeatig 

    @TestSetup
    static void makeData(){
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(FirstName='jon1', LastName='snow1', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon2', LastName='snow2', Company='ABC',LeadSource='Phone')  ); 
        myLeads.add( new Lead(FirstName='jon3', LastName='snow3', Company='ABC',LeadSource='Phone')  ); 
    
        //Act 
        insert myLeads ;
    }

    @isTest
    static void test1(){

        List<Lead> allLeads = [SELECT Id, Name FROM Lead];
        Assert.areEqual(5, allLeads.size());
        
    }

    @isTest
    static void test2(){
        List<Lead> allLeads = [SELECT Id, Name FROM Lead];
        Assert.areEqual(5, allLeads.size()); 
    }

    @isTest
    static void test3(){
        List<Lead> allLeads = [SELECT Id, Name FROM Lead];
        Assert.areEqual(5, allLeads.size());
        
    }
}