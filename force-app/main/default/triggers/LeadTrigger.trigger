trigger LeadTrigger on Lead (before insert, after insert, before delete) {

    /**
     * Requirement : 
     * When the Lead is created, 
     * Update the LastName field to uppercase 
     * If the firstName was entered, make it TitleCase 
     * If the lead source was entered , choose web 
     * THIS CAN BE DONE IN BEFORE_INSERT EVENT 
     */
    System.debug('Trigger is running for Event : ' + Trigger.operationType); 
    
    if(Trigger.isBefore && Trigger.isInsert){
        LeadTriggerHandler.handleBeforeInsert(Trigger.new);
    }        
    
    if(Trigger.isAfter && Trigger.isInsert){
        LeadTriggerHandler.handleAfterInsert(Trigger.new);
    }

    if (Trigger.isBefore && Trigger.isDelete){
    LeadTriggerHandler.HandleBeforeDelete(Trigger.old);
}
}