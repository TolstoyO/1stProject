 
   Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };
    

   // - Create a new Map<String, Integer> 
   Map<String,Integer> newRoman = new Map<String,Integer>();
   //   - store the key into the value of above Map
   for (integer each: romanNumerals.keySet()){
    //   - store the value into the key of above map
    newRoman.put(romanNumerals.get(each), each);
   }
   //  - print result should be {I=1,II=2,III=3,IV=5,V=5}*/
   System.debug(newRoman );
   
