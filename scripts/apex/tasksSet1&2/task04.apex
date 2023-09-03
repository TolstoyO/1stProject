stage as String 
if an opportunityAmount is greater than $100,000 and stage is Closed Won 
    then print out "High Priority Opportunity, follow up immediately ".
else print out  create an task to follow up next week.
*/

integer opportunityAmmount = 30000;
String Stage = 'New';    

if ( opportunityAmmount > 100000 && Stage == 'Closed Won'){
    system.debug('High Priority Opportunity, follow up immediately ');
} else {
    system.debug('Create an task to follow up next week.');
}
