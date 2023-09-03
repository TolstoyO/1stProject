/** 
CReate a variable called starCount
initialize it to 0
use loop to print out below
o star ranger 
1 star ranger 
2 star ranger 
3 star ranger 
4 star ranger 
5 star ranger 
6 star ranger 
*/

//whileloop
integer count = 0;
while (count <= 6 ){
  system.debug(count++   + ' star ranger');
}

system.debug('------------------');

//dowhile loop 
integer starCount = 0;
do {
    system.debug(starCount + ' star ranger');
    starCount++;
} while (starCount <=6);



system.debug('------------------');

//when you are inside loop, if the starCount is 0 print out 'almost there to ranger status'

integer starCount1 = 0;
while (starCount1 <= 6 ){
    if (starCount1 == 0){
        system.debug('Almost there to ranger status ');
    }else if (starCount1 == 6){
        system.debug('All star ranger');
    }else {
  system.debug(starCount1   + ' star ranger');
}
starCount1++;
}
