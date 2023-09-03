trigger BookTrigger on Book__c (before insert, after insert,
                                before update, after update,
                                before delete, after delete,
                                after undelete) {

   System.debug('Trigger is running for Event : ' + Trigger.operationType); 

   //Requirement : 
   //IF the Book Name has changed, 
   //we want to keep the old value in the description field for Tracking
   // This can be done in BEfore update event 

   if (TRigger.isBefore && Trigger.isUpdate){
     BookTriggerHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);

        }

                           
   // Trigger.new =>  List of Book__c records that entered the trigger
     // only available for event of insert, update , undelete 


   // Trigger.newMap =>  records that entered the trigger stored in Map<Id, Book__c> 
    // only available in after insert,before update,after update, after undelete  


//    System.debug('-----Trigger.new---List<Book__c>----------');
//    System.debug(Trigger.new) ; 

          //if(Trigger.isAfter && Trigger.isInsert){
                            
//      System.debug('-----Trigger.newMap--Map<Id,Book__c>-----');
//      System.debug(Trigger.newMap) ; 

//      System.debug('-----All The Key of The Map--IDs of All records----');
//      System.debug('Trigger.newMap.keySet()  value is : ' + Trigger.newMap.keySet() );
        
//    }    


  
  if( Trigger.isBefore &&  (Trigger.isInsert ||Trigger.isUpdate )   ){

      BookTriggerHandler.handleBeforeInsertUpdate(Trigger.new);
      
     }

     //when the record is restored from recycling bin 
     //send an email to logged in user 
     //subject: XX Book has been restored 
     // body : Make sure this book supposed to be restored 

if (Trigger.isAfter && Trigger.isUndelete){
     BookTriggerHandler.handleAfterUndelete(Trigger.new);
}

if(Trigger.isBefore && Trigger.isUpdate){
          
      for(Book__c eachOld  : Trigger.old){
               System.debug('eachOld.Name value is : ' + eachOld.Name);
          }


     }


}