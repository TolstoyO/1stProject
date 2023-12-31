public  class LeadTriggerHandler {
    public static void handleBeforeInsert (List<Lead> leadLst) {

        for(Lead each : leadLst) {
            // make the LastName uppercase and assign it back to field value 
            each.LastName =  each.LastName.toUpperCase(); 
            // * If the firstName was entered, make it TitleCase 
            if( each.FirstName != null ){
                each.FirstName = each.FirstName.toLowerCase().capitalize(); 
            }
            // If the lead source was entered , choose web 
            // you can also use String.isBlank(each.LeadSource)
            if(each.LeadSource == null ){
                each.LeadSource = 'Web' ;    
            }
        }
    }    
     
    public static void handleAfterInsert(List<Lead> leadLst){
        
        
            // We are creating Task for each newly created lead and insert once
            // so we need empty list of Task so we can add it in the trigger loop
            // then perform one dml 
            List<Task> taskList = new List<Task>();
            
            // trigger loop to go through each record entered the trigger
            for(Lead each : leadLst) {
                // create Task and fill up the fields 
                Task t = new Task();
                t.Subject       = 'Send Apple Air tag to ' + each.LastName ; 
                t.ActivityDate  = Date.today() + 2 ; 
                t.WhoId         = each.Id ; 
                // add it to the list 
                taskList.add(t); 
            }
            // insert these tasks into Salesforce
            insert taskList; 
        }
    
         public static void handleBeforeDelete(List<Lead> leadLst){
        for (Lead each: leadLst){
            if(each.Status == 'Working - Contacted'){
               each.addError('Cannot Delete a Lead in Working Status');
            } 
         }

     }
}  
    
