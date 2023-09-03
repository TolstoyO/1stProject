/*Declare three integers and initialize their values
checks if the first number is greater than the second number and the second number is greater than the third number. 
If this is true, the program should print "The first number is the largest." 
If not, the program should print "The first number is not the largest."
*/

integer num1 = 20;
integer num2 = 25;
integer num3 = 30;

if (num1 > num2 && num2 > num3){
    system.debug('The first number is the largest.');
} else {
    system.debug('The first number is not the largest.');
}