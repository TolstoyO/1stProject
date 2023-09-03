/**
8. Write an Apex code that create List or Array of 7 String values
   - store the the index of item in the middle in to variable mid1
   - now imagine you unknown (odd) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 7 items : number 4 item is in the middle
     - if you have 17 items : number 9 item is in the middle and so on
     - no loop needed here
   - print out the value of item in the middle
 */

 String[] groceries = new String [7];
 groceries[0] = 'Bread';
 groceries[1] = 'Milk';
 groceries[2] = 'Beef';
 groceries[3] = 'Eggs';
 groceries[4] = 'Sugar';
 groceries[5] = 'Tomato';
 groceries[6] = 'Cucumbers';
 
 
integer mid1 = groceries.size()/2;

System.debug('item in the middle is: '+ groceries.get(mid1));
 
 
 




