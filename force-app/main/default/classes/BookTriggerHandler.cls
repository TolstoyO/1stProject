public class BookTriggerHandler {

   public static void handleBeforeUpdate(List<Book__c> bookLst, Map<Id,Book__c> bookOldMap){

        for (Book__c each: bookLst){

        Book__c oldBook = bookOldMap.get(each.Id);
        //IF the Book Name has changed 

        if (each.Name != oldBook.Name){
             each.Description__c = 'Old value: '+ oldBook.Name;
        }


   }
   }

   // Requirement : When the new book is created or updated 
  // if the year is empty ==> set it to 1999
  // THIS NEED TO BE WRITTEN IN BEFORE_INSERT OR BEFORE_UPDATE
   public static void handleBeforeInsertUpdate(List<Book__c> bookLst){
     // Start with trigger loop 
     for(Book__c each : bookLst) {
            
        if( each.Year__c == null  ){
            each.Year__c = 1999 ;  
        }
        
        //make the name TitleCase
        each.Name = each.Name.normalizeSpace();
        //get a list of each words
        List<String> wordList = each.Name.split(' ');
        for (Integer i= 0; i< wordList.size(); i++){
           wordList[i] = wordList[i].toLowerCase().capitalize();
        }
        each.Name = String.join(wordList, ' ');
   }
   }

   public static void handleAfterUndelete(List<Book__c> bookLst){
    // user info class can be ued to get information about current loggedin user 
     // it has many static methods to extract information about user
    
     String body = 'Make sure this book supposed to be restored';

     for (Book__c each: bookLst){
          String subject = each.Name + 'Book has been resored';
          EmailManager.sendMail(UserInfo.getUserEmail(), subject, body);
     }
   }
    }
