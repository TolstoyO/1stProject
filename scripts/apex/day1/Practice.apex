//Apex is case insensetive language 
sYsTeM.debug('Hello World');

// This is how we can comment 
// let's get started 
/*
 This is how we can write 
  multiline comment
*/

/*
 In Apex we wrap up text, also known as String
 insite single quote  
*/

System.debug('Hello World');

// APEX is Case Insensitive language
sYsTeM.dEbUg('More Hello') ; 
// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text
System.debug('Let\'s learn variable');

// Creating and using variable 
// DataType variableName = someValueHere

String name = 'Olesya Tolstoy';
integer age = 42;
// print the value of the variable in the log 

System.debug(name);
system.debug(age);

//give a new value for variable you created earlier
name = 'Olesya Vasilenko';
system.debug('My new name is '+ name);



//variables data type that can store NUMBER

integer score = 66;
system.debug('Passing score is '+score);
score = 75;
system.debug('Passing score for this exam is '+score);
system.debug('Your result is '+(score+25));

//variable Data type that can store fractional Number

Decimal pi = 3.14;
system.debug('The value of pi is '+ pi);

Double price = 199.99D;
system.debug('The price value is '+ price);

Long distanceToMars = 1000000000000000000L;
system.debug('Distance to Mars long value '+ distanceToMars);

// variable Data type that can store true or false 
boolean passed = true;
system.debug('Value of passed boolean variable '+ passed);
// change the value to false and print it out
passed = false; 
system.debug('Value of passed boolean variable '+ passed);

/*Apex is case insensetive, but it's good to build good habit of follofing 
good coding convention 
1. always try to keep your data type letter uppercase the 
rest lower
2.always start your variable with lowercase
-- if you have more than one world,
--use camelCase ==> myScore theGoodStuff
*/

// variable Data type that can store Salesforce ID
ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);

// Quick explanation on some Technical Jargons
// Declaring variable 
Integer tables; 

// Assigning the value of the variable
tables = 20 ; 

// Declaring variable and initilizing it's value 
Integer amount = 100 ; 
// re-assigning value 
amount = 200 ; 
 

//Null as value, null means there is no value 
Integer count = null;
system.debug('The value of count is '+ count);


// reassign the value of count variable to the value of amount variable 
count = amount;
system.debug('The value of count is '+ count);


//re-assign the value of count variable 
//to the value of amount variable + 1000
count = amount +1000; 
System.debug('New value of count is '+ count);


//operator + - * /
integer num1 = 200;
integer num2 = 20;
integer result;
// uses these 2 variables to print out below result
/* the addition result between num1 and num2 is resultGoHere
   the substruction result between num1 and num2 is resultGoHere
   the multiplication result between num1 and num2 is resultGoHere
   the division result between num1 and num2 is resultGoHere
*/
result = num1 +num2;
system.debug('The addition result between '+ num1 +' and '+ num2 +' is ' + result);

result = num1 - num2;
system.debug('The substruction result between '+ num1 +' and '+ num2 +' is ' + result);

result = num1 * num2;
system.debug('The multyplication result between '+ num1 +' and '+ num2 +' is ' + result);
 
result = num1 / num2;
system.debug('The division result between '+ num1 +' and '+ num2 +' is ' + result);