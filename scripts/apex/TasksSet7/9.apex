/**9. Write an Apex code that create List or Array of 8 String values
   - store the the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle*/

   
 String[] groceries = new String [8];
 groceries[0] = 'Bread';
 groceries[1] = 'Milk';
 groceries[2] = 'Beef';
 groceries[3] = 'Eggs';
 groceries[4] = 'Sugar';
 groceries[5] = 'Tomato';
 groceries[6] = 'Cucumbers';
 groceries[7] = 'Apples';
 
 integer mid1  = groceries.size()/2;
 integer mid2 = groceries.size()/2+1;

 System.debug('The value of first item in the middle is: '+ groceries.get(mid1)+', second item: '+ groceries.get(mid2));