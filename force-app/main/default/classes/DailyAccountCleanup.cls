public  class DailyAccountCleanup implements Schedulable {
    public void execute (SchedulableContext context){
        List<Account> todaysAccounts = [Select Id FROM Account 
                                            WHERE CreatedDate = TODAY];
         if (!todaysAccounts.isEmpty()) {                                      
        delete todaysAccounts;

    }
}
}