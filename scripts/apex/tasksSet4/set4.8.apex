/**8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size

9. Write a program that takes a list of strings that represent the names of account owners, and counts the number of times jon snow appears in the list.

10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 */


List <Integer> boxes = new List <Integer>{1,2,3,4,5,6,7,8,9};
list <Integer> numbers = new List <Integer>();
for (Integer eachBox : boxes){
    if (eachBox >= 5 && eachBox <=10){
        numbers.add(eachBox);
    }
}
System.debug(boxes);
System.debug(numbers+ ' there are '+ numbers.size()+ ' items  in the list');

