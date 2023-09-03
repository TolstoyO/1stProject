/**
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 
    */

List<Integer> numberList = new List<Integer>{
  58,
  97,
  67,
  15,
  1,
  45,
  23,
  45,
  66,
  75
};

Integer count = 0;

for (Integer each : numberList) {
  System.debug('Current value : ' + each);
  if (each > 5)
    count++;

  if (count == 2)
    break;
}
system.debug('count value is : ' + count);

/**8. Write a program that create a list of strings and print the values that are not equal to "Salesforce",
 using a for loop and the continue keyword.
 */

List<String> classes = new List <String> {
  'Java SDET',
  'Salesforce',
  'Java Scripts',
  'C++'
};
for(Integer i=0; i<classes.size() ;i++) {
   String each = classes.get(i); 
  if (each == 'Salesforce'){
  continue;
  }
  System.debug('Value at index #' + i + ' is :' + each);
}