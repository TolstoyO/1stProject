//Just like @future method 
//we can put a cod into class that implements Queueble interface 
//and provide detail of execute method 
//in order to run the code 
//System.enqueJob
System.debug('Running apex-anon');

Queueable q = new AccountUpdateAsync('Awesome');
System.enqueueJob(q);