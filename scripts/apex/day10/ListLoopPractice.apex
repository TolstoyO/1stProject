/**
Create a list of 10 Decimal numbers 
in 2 separate loops 

in first loop 
iterate over the list and print out the each items 
skip item number 3 and 7 while printing

in second loop 
iterate over the list and print out the each items 
break out of the loop if the number is more than 100

 */

List<Decimal> numbers = new List<Decimal>{
  1.11,
  22.22,
  100.99,
  3.33,
  14.44,
  200.00,
  12.50,
  8.88,
  9.99,
  50.00
};
//prit out the last item value without hard coding 
//first get the last item index, it's always 1 less then item size 
integer indexOfLAstItem = numbers.size()-1;
system.debug('index of last item  '+ indexOfLAstItem);
//then print out the last item value using get method 
system.debug('last item value '+ numbers.get(indexOfLAstItem));
//in first loop 
//iterate over the list and print out the each items
// skip item number 3 and 7 while printing

for(Integer index=0 ; index< numbers.size() ;  index++  ){
    // item 3   or  item 7 
    if(index==2 || index==6){
        continue ; 
    }

    System.debug('Index # '+ index +' : ' + numbers.get(index)  ) ; 

}


for (Decimal EachNumber :numbers){
if (EachNumber>100){
    break;
}
system.debug('index # ' + index + ' : '+ numbers.get(index));
}