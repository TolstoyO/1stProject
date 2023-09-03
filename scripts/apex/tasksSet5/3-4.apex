/**
3. Write a program that store List of Integer with 10 items and try to get the sum of values,  
break out of the loop if the sum is greater than 100.  */

List<Integer> students = new List<Integer>{
  10,
  14,
  34,
  23,
  23,
  24,
  25,
  18,
  30,
  34
};
integer sum = 0;
for (integer eachStudent : students) {
  sum += eachStudent;
  if (sum > 100)
    break;
}
system.debug(sum);

system.debug('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');

/**
4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 */

List<Double> prices = new List<Double>{
 0.99,
 11.99,
 22.99,
 33.99,
 44.99,
 55.99,
 66.99,
 77.99,
 88.99,
 99.99
};

for (Double eachPrice : prices){
    System.debug(eachPrice);
  if (eachPrice > 50.5 && eachPrice < 90.99) {
    break;
  }
}