/**
Sometimes we want to skip certain iteration if certain condition is met
when we are inside the loop

continue keyword can be used to skip the iteration
and jump to next iteration

 */

//count from 1-10 and print
//skip 5 while counting

for (Integer count = 1; count < 10; count++) {
  if (count == 5) {
    system.debug('******');
    continue;
  }
  system.debug('count value ' + count);
}

system.debug('2222222222222222222222222222222222');
/**
Create List of Integer with couple items 
Iterate over each items and print the number 
skip when you see any number that more than 10 */

List<Integer> numList = new List<Integer>{ 19, 1, 23, 4, 6, 99 };
for (Integer eachNum : numList) {
  if (eachNum > 10) {
    continue;
  }
  system.debug(eachNum);
}
