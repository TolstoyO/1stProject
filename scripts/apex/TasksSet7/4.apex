/*4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop */

   List <String> names = new List <String>{
    'CEO',
    'Sales Manager',
    'Marketing',
    'Network engenier',
    'Human resource',
    'Admin',
    'Developer',
    'Alla',
    'Polina',
    'Oksana'
   };

   List <String> newList = new List <String>();
   for (string each :names){
    if (!(each == 'Admin' || each == 'Developer'))
    newList.add(each);
   }
System.debug('There are '+newList.size()+ ' in the newList ' + newList);
