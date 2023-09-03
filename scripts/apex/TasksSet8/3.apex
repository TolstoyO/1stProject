/**
3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out  */

List<Integer> scores = new List<Integer>{
  2,
  12,
  22,
  33,
  45,
  65,
  54,
  23,
  23,
  545
};

Integer sum = 0;
Integer count = 0;
for (Integer each : scores) {
  if (Math.mod(each, 2) != 0) {
    system.debug(each);
    sum += each;
    count++;
  }
}
System.debug('The sum of all odd numbers is: ' + sum);
System.debug('There are ' + count + ' odd numbers in the list.');
