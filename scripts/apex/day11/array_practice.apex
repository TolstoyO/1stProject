/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2, item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */

 String[] groceries = new String [4];
 groceries[0] = 'Bread';
 groceries[1] = 'Milk';
 groceries[2] = 'Beef';
 groceries[3] = 'Eggs';

 groceries.add('Banana');

 System.debug('groceries : ' + groceries);
 
 //print out the item at index 2 using ARRAY syntax.
  System.debug('item at index 2 is :'+ groceries[2]);

  //print out the item at index 2 using LIST syntax.
 System.debug('item at index 3 is :'+ groceries.get(3));

 System.debug('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

   // change the value of item at index 1 to 'Cream Cheese'
  groceries[1] = 'Cream Cheese' ; 
  System.debug('groceries value is : ' + groceries); 
// //  MyAwesomeType
// List<MyAwesomeType>
// MyAwesomeType[]
// below code wil work because for APEX compiler they are the same thing 
//Integer[] numbers = new List <Integer> ();

for (String each: groceries){
    System.debug('Current value: '+ each);
}
/*System.debug('value is : '+ groceries[0]);
System.debug('value is : '+ groceries[1]);
System.debug('value is : '+ groceries[2]);
System.debug('value is : '+ groceries[3]);*/

for(Integer index=0; index<4 ;index++) {
System.debug('value is : '+ groceries[index]);
    
}