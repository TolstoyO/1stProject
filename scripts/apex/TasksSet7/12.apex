/**
12. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set 
 */

 Set<Integer> scores = new Set<Integer>{10,20,30,40,50,60,70,80,90,100};
 integer sum = 0;
 integer average;

for(Integer each : scores)  sum += each;
 average = sum/scores.size();
 System.debug('Average of scores is: ' + average);
 
 List<Integer> newScores = new List<Integer>();
for(Integer each : scores) {
   if( each>average ){
    newScores.add(each);
   }else{
    scores.remove(each);
   }
}
    System.debug(scores);
    System.debug(newScores);

 