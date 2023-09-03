@isTest
private  class CreateChildCaseHandlerTest {
   
     @isTest
     static void testHighPRiorityCaseNewChildCaseCreation (){
        //arrange 
        List<Case> newCases = TestDataFactory.createCases(3, 'High');

        //act
        test.startTest();
        insert newCases;
        test.stopTest();

        //assert
        List<Case> newChildCases = [SELECT Subject, ParentId, Priority, Parent.CaseNumber
                                    FROM Case
                                    WHERE ParentID IN :newCases];
        Assert.areEqual(3, newChildCases.size());


        for (Case each: newChildCases){
            Assert.areEqual('High', each.Priority);
            //subject of child is: Child Case for Case #ParentCaseNumber
            String expectedSubject = 'Child Case for Case #'+ each.Parent.CaseNumber;
            Assert.areEqual(expectedSubject, each.Subject);
        }
     }

     @isTest
     static void testNotHighPriorityCaseNoNewChildCase(){
        //arrange 
        List<Case> newCases = TestDataFactory.createCases(3, 'Low');
        List<Case> newCases2 = TestDataFactory.createCases(2, 'Medium');

        newCases.addAll(newCases2);

        //act
        test.startTest();
        insert newCases;
        test.stopTest();

        //assert
        List<Case> newChildCases = [SELECT Subject, ParentId, Priority, Parent.CaseNumber
        FROM Case
        WHERE ParentID IN :newCases];
        Assert.areEqual(0, newChildCases.size());
     }

     @isTest
     static void testHighPRiorityCaseNewChildCaseCreationCSV_File(){
        //arrange 

        //allow you to load the static resource csv file 
        //you havr uploaded previously and load that into List of sObject
        List<SObject> newCases = Test.loadData(Case.sObjectType, 'caseData');



        //check the childcases size is 10
        List<Case> newChildCases = [SELECT Subject, ParentId, Priority, Parent.CaseNumber
                                    FROM Case
                                    WHERE ParentID IN :newCases];
        Assert.areEqual(10, newChildCases.size());


        for (Case each: newChildCases){
            Assert.areEqual('High', each.Priority);
            //subject of child is: Child Case for Case #ParentCaseNumber
            String expectedSubject = 'Child Case for Case #'+ each.Parent.CaseNumber;
            Assert.areEqual(expectedSubject, each.Subject);
        }
     }
     
     //WE SHOULD NOT RELY ON EXISTING DATA IN THE ORG 
     // WORKING WITH EXISTING DATA IN THE ORG WILL CAUSE UNEXPECTED POTENTIAL RESULTS 
     // DO NOT USE UNLESS YOU REALLY CAN REPLICATE TE DATA YOU NEED FOR THE TEST 
     @isTest
     static void seeAllDataTest(){
      
      //Now we have access to all org data we are connected to 
      //lets write a simple query to get all cases
      List<Case> allCases = [SELECT Subject, CaseNumber, Priority FROM Case ];
      System.debug(allCases.size());
      
     }
      
     }
    
