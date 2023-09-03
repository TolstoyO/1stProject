integer count = 1;
while (count < 10 ){
    system.debug(count);
    count++;
}

system.debug('---------------------------');

/**for( initilization ;loop condition ;increment|decrement ){
    // repeating stuff here 
 }
Initialization:
 this is where variable is declared and initial value is given , IT WILL ONLY RUN ONCE WHEN THE LOOP START

 Loop condition:
 this is where we put condition for the loop, as long as it's true the loop continue. 

 Increment/ decrement
this is where we increment or decrement the value so we can change the condition and eventually
get out of the loop, IMPORTANTLY , It run after each iteration 
*/

for (integer count1 = 1; count1< 10; count1++) {
 system.debug(count1);
}


//skip counting 1-20 by 2 from 0-20 using forloop
//0 2 4 6 8 ....20

for (integer candy = 0; candy <=20; candy+=2){
    system.debug(candy);
}

