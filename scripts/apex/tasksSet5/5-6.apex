/**
5. Write a program that create List of Id with 10 items and use 2 different loop (for loop and for each loop )
to print out all value for practice 

    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop */

List<ID> accountIds = new List<ID>{
  '003Dn000008y5tQIAQ',
  '003Dn000909y5tTIAQ',
  '003Dn000009y5tRIAQ',
  '003Dn000009y5tSIAQ',
  '001Dn000009y5tJIAQ',
  '003Dn004009y5tWIAQ',
  '003Dn000009y5tHIAQ',
  '003Dn000009y5tTIAQ',
  '003Dn000009y5tPIAQ',
  '003Dn000009y5tIIAQ'
};

for (ID eachAccountID : accountIds) {
  if (eachAccountID == '001Dn000009y5tJIAQ') {
    break;
  }
  system.debug(eachAccountID);
}

/**
6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end  */

List<Integer> classes = new List<Integer>{
  10,
  15,
  20,
  6,
  4,
  35,
  2,
  24,
  22,
  20
};

Integer count = 0;
for(Integer eachClass : classes){
   if (eachClass > 5) count++;
}
System.debug('we found ' + count+ ' classes greater than 5');


integer cnt = 0;
for(Integer i=0; i<classes.size() ;i++) {
  if(classes.get(i)>5) cnt++;
}
system.debug('we found ' + cnt+ ' classes greater than 5');
