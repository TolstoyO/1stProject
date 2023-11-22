public  class AccountUpdateAsync  implements Queueable{
    
    
    String description;
    List<Account> accLstProcess;

    public AccountUpdateAsync(String description, List<Account> accLstProcess) {
        this.description = description;
        this.accLstProcess = accLstProcess;

    }
    public void execute (QueueableContext context){
        System.debug('Running some awesome code in AccountUpdateSync');
        System.debug(this.description);

        for (Account each: accLstProcess){
            each.Description =  this.description;
        }
        update accLstProcess;

        TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
        System.debug(tq);

    }

}