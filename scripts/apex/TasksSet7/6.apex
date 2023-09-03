/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}*/

   List<String> characters = new List <String> {'Anakin','Obivan','Yoda','Windu','Ahsoka'};

   for(Integer i=0; i<characters.size(); i++) {
   characters.set(i, characters.get(i)+' sf'+ i);
   }
   system.debug('something new '+ characters);
    
