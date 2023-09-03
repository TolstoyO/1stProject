/**9. Write a program that create a list of strings and print the values that are not equal
 to "Admin" or "Developer" using a for loop and the continue keyword.*/

List<String> roleList = new List<String>();
roleList.add('Admin');
roleList.add('Developer');
roleList.add('Java SDET');
roleList.add('Java Developer');
roleList.add('Cybersecurity Analyst');
roleList.add('Data Science');
roleList.add('Salesforce Developer');
roleList.add('Salesforce Architect');
roleList.add('Sales Manager');
roleList.add('Marketing Director');
roleList.add('Help Desk');

/*for (Integer i = 0; i < roleList.size(); i++) {
  string each = roleList.get(i);  
  if (each == 'Admin' || each == 'Developer') {
    continue;
  }
  System.debug('Value at index #' + i + ' is :' + each);
}*/

/*10. Write a program that create a list of strings with 10 values and get the count
 of the items that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.*/
integer count = 0;
 for(Integer i=0; i<roleList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
    String each = roleList.get(i) ;  //Admin

    if(each!='Admin' && each !='Developer'){
      count++; 
    }  
 }

 System.debug('count value is : ' + count); 

 //if the value is NOT 'Admin' or 'Developer' print Count this 
if (!(each== 'Admin'|| each=='Developer')){
    system.debug('Count this');
}