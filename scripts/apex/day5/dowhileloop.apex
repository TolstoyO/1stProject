/**
Loop , is for repeating certain block of code 
as long as certain condition is true 

there are 4 types of loops 
while loop 
do while loop 
for loop 
for each loop 
 
 do {
    //repeating condition 
 }
 While(condition) {
    
}
*/

integer score = -5;
// count from 1 to 10

do {

system.debug(score++);

}while (score < 11);

system.debug('-------------------');

//countdown 10 9 ....1 
integer sushi = 10;
do {
 system.debug(sushi--);
} while (sushi > 0);