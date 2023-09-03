/**
1. Write an Apex code to print all the odd numbers
 from 1 to 100 using for loop.    1,3,5,7.....99 */

 for (integer num =1; num <= 100; num +=2){
    system.debug(num);
 }

 system.debug('---------------------------------');

/** 2. Create an Integer variable with name upperLimit to control where to stop and initialize it's value to 50. 
Create a for loop to count from 1 to the upperLimit , try different upperLimit and run again */

integer upperLimit = 50;
for (integer count = 1; count <= upperLimit; count++){
   system.debug(count);
}

system.debug('---------------------------------');

/**3. Create an Integer variable called startingNumber
Create a loop to countdown from starting number till 0. */

integer startingNumber = 8;

for (integer count1 = startingNumber; count1 >= 0; count1--){
   system.debug(count1);
}



