/*1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count*/

   Integer []  numbers = new Integer [10];
   numbers [0] = 5;
   numbers [1] = 23;
   numbers [2] = 23;
   numbers [3] = 43;
   numbers [4] = 66;
   numbers [5] = 55;
   numbers [6] = 66;
   numbers [7] = 44;
   numbers [8] = 55; 
   numbers [9] = 12;

   Set<Integer> numbrs1 = new Set<Integer>(numbers);
   System.debug('Numbers without duplicates: '+ numbrs1);

   Integer difference = numbers.size() - numbrs1.size();
   
   System.debug('the unique item count: ' + numbrs1.size());
   System.debug('difference between total list item count: ' + difference);