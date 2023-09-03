/**1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)*/

integer sum = 0;
for (integer num = 1; num <= 100; num+=2){
    sum+=num;
}
system.debug('The sum of all numbers is: '+ sum);


integer oddNumber = 1;
integer total = 0;
while  (oddNumber <= 100){
     total += oddNumber;
     oddNumber +=2;
}
system.debug('Total of all odd numbers from 1-100 is: '+ total);

Integer odd = 1 , w = 0 ;
do{
    w = w + odd;
    odd += 2;
}while(odd <= 100);
System.debug('Total sum is: '+ w);