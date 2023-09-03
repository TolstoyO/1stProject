public class OppsTriggerHandler {
   
    public static Boolean firstRun = true; // a static variable to keep track of whether this is thie first time 
    //hndleAfterUpdtae is being called in this excecution 
    //so we can prevent recursion 

    public static void handleAfterUpdate (List<Opportunity> opps ){
       
       // if this is not the first time 
       // we will get out of the method 
       if(!firstRun){
        // we can return keyword to get out of the method early
        // this is the void method it fdoes not return value 
        //we are simply using it to exit the method early
        return;
       }

       //if it was the first time, set the firstRun value to true
       firstRun = false;

        List<Opportunity> updateOpps = new List<Opportunity>();
     for (Opportunity each: opps){

     // we can not direct edit the record within the context of Trigger.new
     //becuse it is locked in afterupdate event to prevent recursion 
     //however we can clone the record into new variable including record Id 
     //we can do update on that cloned rerord 
     //then do update DML for the list that contains new updates

        Opportunity eachClone= each.clone(true);// this will clone the reord including the record ID 

        if (each.Amount > 100000){
            eachClone.Description = 'High Amount'; //we can't do each.Description = 'High Amount' because record is locked 
        }else{
            eachClone.Description = 'Low amount';
        } 
        updateOpps.add(eachClone);
     }
     update updateOpps;
    }

    //once we done with this execution, switch it bacl to true 

}