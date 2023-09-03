/*1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop*/

List <String> names = new List<String>();
names.add('Olesya');
names.add('Iliya');
names.add('Phillip'); 

System.debug(names);

names.add(1,'Alex');
names.add(1,'Arina');
names.add(1,'Dmitriy');

for(String each : names) {
    System.debug('Name:' + each);
}

system.debug('%%%%%%%%%%%%%%%%');


for(Integer i=0; i<names.size() ;i++) {
     System.debug('Name:' + names.get(i));
}
    
  