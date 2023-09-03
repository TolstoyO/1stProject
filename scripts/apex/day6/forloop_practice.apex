/**
count from 1-10 using loop 
print the count multiplied by 5 
1 x 5 = 5
2 x 5 =10
3 x 5 = 15
 */

for (integer count = 1; count <=12; count++){
    system.debug(count + ' x 5 = ' + count*5);
}


system.debug('-------------------------');

/**
Continue from above code, 
Above code works great if you just want to get the multiplication table of 5 , 
we want to be able to provide any number not just 5 and 
generate multiplication table of any numbers 
 */

integer num = 12;
integer count = 1;

for (integer count = 1; count <=12; count++){
    system.debug(count + ' x ' + num+ ' = ' + count*num);
}


/**
give a number, print out below
YourNumber +1 = result 
YourNumber +2 = result 
YourNumber +3 = result 
YourNumber +4 = result 
..............
YourNumber +10 = result 
 */

integer YourNumber = 7;
 for (integer num = 1; num <= 10; num++){
    system.debug(YourNumber + ' + ' + num + ' = ' + (YourNumber + num));
 }

 system.debug('----------------');

 integer sum = 0;

for (integer count = 1; count<= 100; count++){
    system.debug('Iteration number ' + count );
    sum += count;
    system.debug('Sum: '+ sum);
}