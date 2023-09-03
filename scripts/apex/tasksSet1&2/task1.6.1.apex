/*  Write an Apex code that store contactEmail and mailingState as String 
   - check if a Contact's email is not null (!=null) and it's mailing state is Californina, 
   - if both conditions are true, print out 'Valid Californnia Contact'
*/

String contactEmail = 'ot@yahoo.com';
string mailingState = 'California';    

if (contactEmail !=null && mailingState == 'California'){
    system.debug('Valid California Contact');
}