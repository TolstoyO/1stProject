/*4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value*/

Double num1 = math.random() * 100;
Double num2 = math.random() * 100;
Integer int1 = num1.intValue();
Integer int2 = num2.intValue();
System.debug('first integer value is: ' + Int1 + ' : the second one is: ' + Int2);
System.debug('the largest number is: ' + math.max(Int1, Int2));
