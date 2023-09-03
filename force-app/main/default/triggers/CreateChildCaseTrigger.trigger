trigger CreateChildCaseTrigger on Case (after insert) {

    if (trigger.isAfter && Trigger.isInsert){
        CreateChildCaseHandler.handleAfterInsert(Trigger.new);
    }

}