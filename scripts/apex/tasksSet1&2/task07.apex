/*Declare 3 Integer variavles and initialize their values.
 Write a code to print out the largest number by comparing them with each other. */

integer num1 = 55, num2 = 25, num3 = 85;
if (num1 > num2 && num1 > num3) {
  system.debug(num1 + ' is the biggest number.');
} else if (num2 > num1 && num2 > num3) {
  system.debug(num2 + ' is the biggest number.');
} else {
  system.debug(num3 + ' is the biggest number.');
}
