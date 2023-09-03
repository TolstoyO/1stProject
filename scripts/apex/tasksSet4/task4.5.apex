
/**5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set*/

   List <String> names = new List <String> {
    'Sophia Loren',
    'Monica Bellucci',
    'Robert De Niro',
    'Franco Nero',
    'Fabio Testi',
    'Claudia Cardinale',
    'Riccardo Scamarcio',
    'Monica Bellucci',
    'Robert De Niro',
    'Claudia Cardinale'
   };

 /** set <String> setNames = new set <String>();
  for (string eachName: names){
    setNames.add(eachName);
  }*/

  set <String> setNames = new set <String>(names);

  system.debug('Set of '+ setnames.size()+ ' names without duplicates');


