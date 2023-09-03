/*10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5*/

  Integer [] numbers = new Integer [10];
  numbers[0] = 1;
  numbers[1] = 3;
  numbers[2] = 5;
  numbers[3] = 10;
  numbers[4] = 15;
  numbers[5] = 18;
  numbers[6] = 21;
  numbers[7] = 20;
  numbers[8] = 30;
  numbers[9] = 16;


if (numbers.contains(5) && numbers.contains(10)) {
  System.debug('Ideal numbers');
} else if (numbers.contains(10)) {
  System.debug('Good numbers');
} else if (numbers.contains(5)) {
  System.debug('Ok numbers');
} else {
  System.debug('Not so Good numbers');
}