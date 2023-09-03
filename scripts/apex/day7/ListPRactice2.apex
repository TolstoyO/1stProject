/**
Declare a list of integer  variable and initialize it's value 
Fill up list with 100 items, starting with 1-100 */

List <Integer> numberList = new List <Integer>();

for (integer count = 1; count<=100; count++){
    numberList.add(count);
}
system.debug(numberList);
system.debug(numberList.size());

// Create a list of Integer and store 15 items 
// all items value should be 10

List <Integer> voteNumbers = new List <Integer> ();
for (integer num = 1; num<=15; num++){
    voteNumbers.add(10);
}
system.debug(voteNumbers);

system.debug('******************************');

for (integer num = 1; num<=15; num++){
   system.debug('Hello World');
}
system.debug('******************************');
/**
Hot to  count the items inside the list 
so we get the number size () method of list */

integer voteCount = voteNumbers.size();
system.debug(voteCount);

system.debug('******************************');

//or you can directly print it out without saving 

system.debug(voteNumbers.size());