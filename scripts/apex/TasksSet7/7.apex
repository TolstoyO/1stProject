/*7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'*/
     List <String> strList = new List<String> {'This','is','The','Way','Student'};
     String joinedText = '';

//Loop through all the items and append one item after another into joinedTex
//variable separated by hyphen(-) and last item should not have -

for(Integer i=0; i<strList.size() ;i++) {

String each = strList.get(i);
if (i == strList.size()-1){
    joinedText += each;
}else{
    joinedText += each  + '-';
}   
}
System.debug('Current value : ' + joinedText);
