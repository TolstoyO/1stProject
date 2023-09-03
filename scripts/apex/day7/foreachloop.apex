/**
For each loop is specifically used to
Interate over (loop through) each and every item
every itme
inside Collection like (List, Set)

for(DataType eachItem : yourCollectionVariable ){
// do what you want to do with each item
}
 */

 List <Integer> numberList = new List <Integer>{5,7,9,4,34,12};
 system.debug('Item count: '+ numberList.size() );
 for (integer each: numberList){
    system.debug(each);
 }

 //create a list of string and add 4 items 
 // use for each loop to iterate over them print it out 

 List <String> roles = new List <String> ();
 roles.add('Clock-Master');
 roles.add('Karate-Girl');
 roles.add('Screenshot-Master');
 roles.add('Type-Master');
 //system.debug(roles);
 for (string each: roles){
    system.debug(each);
 }

 
 // Create a List of Decimal and add 6 values in it 
// iterate over each item and print it out 
List<Decimal> prices = new List<Decimal>{9.99,  2.59, 3.14 , 9.9 , 10.5}; 


for(Decimal eachPrice  :   prices  ){
    System.debug('Price is : ' +  eachPrice ) ; 
}

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers

decimal sum = 0;
for (Decimal eachPrice: prices){
    sum+=eachPrice;
}
system.debug(sum);

