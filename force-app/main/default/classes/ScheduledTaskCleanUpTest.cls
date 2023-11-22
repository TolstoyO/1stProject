@isTest
private class ScheduledTaskCleanUpTest {
    
    @TestSetup
    static void createTestData(){
        //arrange 
        List<Task> allTasks = new List<Tasks>();
        for (Integer i; i<=10; i++){
            Task t = new Task (Subject = 'TEst schedule '+ i, ActivityDate = Date.today()-1);
            allTasks.add(t);
        }
    insert allTasks;
    }

    @isTest
    static void testOverdueTasksGetCompletedWithSchedule(){
        //aact
        Test.startTest();
        ScheduledTaskCleanUp stc = new ScheduledTaskCleanUp();
        System.schedule('Task cleanup', '0 0 0 15 3 ? 2042', stc);
        //before  Test.stopTest line run, assert Completed Task count is 0
        List<Task> theTaskBeforeScheduleRun = [SELECT Id FROM Task WHERE Status = 'Completed'];
        Assert.areEqual(0, theTaskBeforeScheduleRun.size());
        test.stopTest();
        //assert 
        //we are expecting all 10 tasks status become completed 
        List<Task> latestTasks = [SELECT Id FROM Task WHERE Status = 'Completed'];
        Assert.areEqual(10, latestTasks.size());
    }
}
