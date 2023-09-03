/**Q4-With a variable named size given, write a program that can display the price and calories of cappuccino as displayed below.
Valid sizes are tall, grande and venti and their prices and calories  are

Tall: price is $3.69
90 calories

Grande: price is $3.99
120 calories

Venti: price is $4.29
150 calories

If the size is invalid than the output should be ‘Invalid Size’

Solution 1: use if statement
Solution 2: use switch statement
Solution 3: use ternary*/

string size = 'venti';

if (size == 'venti'){
    system.debug(size + ': Price is $4.29');
    system.debug('150 calories');}
else if (size == 'grande'){
    system.debug(size + ': Price is $3.29');
    system.debug('120 calories');}
else if (size == 'tall'){
    system.debug(size + ': Price is $3.69');
    system.debug('90 calories');  }
else {
    system.debug('Invalid size');
}  


String result;
switch on size{
    when 'venti' {
        system.debug(size + ': Price is $4.29');
        system.debug('150 calories');}
    when 'grande'{
        system.debug(size + ': Price is $3.29');
        system.debug('120 calories');}
    when 'tall'{
        system.debug(size + ': Price is $3.69');
        system.debug('90 calories');  }
    when else {
         system.debug('Invalid size');
    }
   }   

   result= (size=='venti')? size+':price is $4.29 \n150 calories' :
(size=='grande')? size+':price is $3.99 \n120 calories' :
(size=='tall')? size+':price is $3.69 \n90 calories': 'Invalid size';

System.debug(result);