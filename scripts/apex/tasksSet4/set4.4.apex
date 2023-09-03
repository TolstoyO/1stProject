/**4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers */

   List <Long> lNumbers = new List <Long> {
    9876543210L,
    8765432107L,
    3456678906L, 
    7665433356L,
    7776567898L,
    -7766554439L,
    -7665555449L,
    -2345678790L,
    88777777895L,
    -89009877565L};

long sum = 0; 
long count = 0;
long negCount = 0;

for (long eachLnumber : lNumbers)
if (eachLnumber > 0){
sum += eachLnumber;
count++;
}
else if (eachLnumber < 0){
negCount++;
}

system.debug('the sum of positive numbers: '+ sum);
system.debug('the count of positive numbers: '+ count);
system.debug('the count of negative numbers: ' + negCount);