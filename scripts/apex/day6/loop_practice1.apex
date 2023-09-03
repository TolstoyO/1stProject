/**
declare and initialize variable muffin
countdown from 20 - >0 decrease by 2 
if the number is greater than 10 print out 'muffin count is xx'
else print out 'muffin count is xx, I am full'
 */

integer muffin = 20;

while (muffin >= 0) {
    
    if (muffin > 10){
        system.debug('Muffin count is ' + muffin);
    }else {
        system.debug('Muffin count is ' + muffin + ', I am full.');
    }
    muffin -= 2; // decrease muffin by 2
}


system.debug('-------------------------------');
/**
Declare and initialize variable muffinCount
Countdown from 20 -> 0 

// if the number is greater than 10 
    // print out first half : muffin count is XX
    // decrease the muffin by 3 
// else 
    // print out second half : muffin count is XX
    // decrease the muffin by 2 
*/

integer muffinCount = 20;
while (muffinCount > 0){
    if (muffinCount > 10){
        system.debug('First half: Muffin count is ' + muffinCount);
        muffinCount -= 3;
    } else {
        system.debug('Second half: Muffin count is ' + muffinCount);
        muffinCount -= 2;
    }
}

