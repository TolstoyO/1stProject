/** practice List using similar approach 
2. Write a program that store the even numbers from 1 to 20 into List of Integer
  then write an apex code to get the sum of all items in the list. */

List <Integer> evenNumbers = new List <Integer>();
integer sum = 0;
for (integer even = 1; even<=20; even+=2){
 evenNumbers.add(even);
 sum += even;
}
system.debug('The sum of even numbers is: '+ sum);

