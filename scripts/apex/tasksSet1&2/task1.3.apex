/*  Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'*/

/* in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood' 
*/

Boolean isBaby1Laughing = true;
Boolean isBaby2Laughing = true;

if (isBaby1Laughing && isBaby2Laughing) {
  system.debug('Both are laughing.');
} else if (isBaby1Laughing && !isBaby2Laughing) {
  system.debug('Only first baby is laughing.');
} else if (!isBaby1Laughing && isBaby2Laughing) {
  system.debug('Only second baby is laughing.');
} else {
  system.debug('No babies are laughing');
}

if (
  (isBaby1Laughing && isBaby2Laughing) || (!isBaby1Laughing && !isBaby2Laughing)
) {
  system.debug('both in same mood');
} else {
  system.debug('Not in a same mood');
}
