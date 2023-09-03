/*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}*/

   List <Integer> numbers = New List <Integer> {1,4,6,4,6,5,9};
   
   for(Integer i=0; i<numbers.size() ;i++) {
    numbers [i] = numbers.get(i) * 2;
   }
   System.debug(numbers);

