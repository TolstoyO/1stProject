/*

*/
//primt out the count by incrementing the value by 1 
//until you rich 5

integer count = 1;
// system.debug(count++); //1
// system.debug(count++); //2
// system.debug(count++); //3
// system.debug(count++); //4
// system.debug(count++); //5

while (count <= 5){
    system.debug(count++);
   // count++;
}



//print out skip couting by2 
//if the starting number is 0
// 02 4 6 8 10......
//if starting number is 1 
// 1 3 5 7 9  11...
// unitl 15


integer anyNumber = 1;
while  (anyNumber <= 15){
    system.debug (anyNumber);
   // anyNumber = anyNumber +2;
 anyNumber +=2;// short for above
}

system.debug('------------------------');




//count from 10-1

integer cupcakeCount = 10;
while (cupcakeCount > 0 ){
    system.debug(cupcakeCount);
    --cupcakeCount;
}

system.debug('------------------------');


//print out 15, count down by 3 
//decreasing by 3 each time 
//15,12,11,9,6,3,0

integer candy = 15;
while (candy >= 0) {
    system.debug(candy);
    candy -=3;
}



