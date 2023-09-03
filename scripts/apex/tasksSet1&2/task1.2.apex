/* Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number  */

integer num1 = 55, num2 =  25, num3 = 5;
if (num1 < num2 && num1<num3){
    system.debug( num1 + ' is the smallest number.');
}else if (num2<num1 && num2< num3){
    system.debug(num2 + ' is the smallest number.');
}else {
    system.debug(num3 + ' is the smallest number.'); 
}
