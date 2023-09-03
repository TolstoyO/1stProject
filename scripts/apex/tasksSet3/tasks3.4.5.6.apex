/**4. Create two Integer as startingNumber and endingNumber
initialize their value (startingNumber should be less than endingNumber in this case).
use for loop to count up by one starting from startingNumber and end at endingNumber */
integer startingNumber = 2;
integer endingNumber = 15;

for (integer count =  startingNumber; count <= endingNumber; count++ ){
   system.debug(count);
}

system.debug('------------------------');

/**
5. Continue from above , Create a  similar logic as above, this time 
(startingNumber should be greater than endingNumber in this case).
 count down from starting number till the ending number.  */

integer startingNumber1  = 15;
integer endingNumber1 = 8;

for (integer count1 = startingNumber1; count1 >= endingNumber1; count1--){
    system.debug(count1);
}


system.debug('------------------------');

/**Print out  20, 22, 24.....40 yay we finished half 42 44 46....60
 (Print out 'Yay we have finished half' when the count is exactly 40 as above)*/

// for (integer candy = 20; candy <= 60; candy +=2){
    // system.debug(candy);
 //}


 for(Integer count=20 ; count<=60 ; count += 2){
    if(count==40){
        System.debug( count +' Yay we have finished half');
    }else{
        System.debug(count);
    }
   
}
    
    
