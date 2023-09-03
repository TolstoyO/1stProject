/*9. Write a program that takes a list of strings that represent the names of account owners,
 and counts the number of times jon snow appears in the list.

10. Write a program that takes a list of integers that represent the amounts of money spent by
a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 */

List <String> accountOwners = new List <String>{'Jon Snow', 'Arya Stark', 'Cersei Lannister',
 'Jon Snow', 'Sansa Stark', 'Jon Snow' 
};
integer count =0;
for (string eachAccountOwner : accountOwners){
    if (eachAccountOwner == 'Jon Snow'){
        count++;
    }
}
system.debug('there are ' + count + ' duplicates found for John Snow');


List <Integer> amountSpent = new List <Integer>{15000, 3500, 9876, 14000, 11765, 987, 6540, 4556};
