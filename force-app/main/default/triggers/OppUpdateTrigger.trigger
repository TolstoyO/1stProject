trigger OppUpdateTrigger on Opportunity (after update) {

    /**
     * if Opp amount is updated to > 100000
     * update the description field to high amount 
     * if not - low amount
     *this scenario is good for before update 
     in this situation, we are using after update to demonstrate 
     this will cause recursive trigger execution that eventaully fail and 
     Salesforce will prevent this from happinning by throwing System.FinalExeption record is locked 

     To fix thi, we can use a static variable in handler class 
     to keep track of whether this trigger already been executed or not if so stop the execution 
     //else it means it's running for the first time execute the code 

     */
     OppsTriggerHandler.handleAfterUpdate(Trigger.new);

}