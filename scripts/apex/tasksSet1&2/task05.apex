/*Declare and initialize variables as below 
leadCompanySize as String 
checks if a Lead's Company size is either "Small" or "Medium". 
If either of these conditions are met, 
print a message that says "Good Lead" 
else take no action 
*/

String leadCompanySize = 'Small';
if (leadCompanySize == 'Small' || leadCompanySize == 'Medium'){
    system.debug('Good Lead!');
} 