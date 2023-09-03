/*2. Write a program that store List of long with 10 items with positive and negative numbers
 and print out all positive values using for loop try using the continue instead.*/
List<Long> lNumbers = new List<Long>{
  9876543210L,
  8765432107L,
  3456678906L,
  -7665433356L,
  -7776567898L,
  -7766554439L,
  -7665555449L,
  -2345678790L,
  88777777895L,
  -89009877565L
};

//for each loop
/* for (Long eachnum : lNumbers){
        if (eachnum>0){
            system.debug('Positive number is ' + eachnum);
        }
    }*/

for (Integer index = 0; index < lNumbers.size(); index++) {
  if (lNumbers.get(index) < 0) {
    continue;
  }
  system.debug('Positive number is ' + lNumbers.get(index));
}
