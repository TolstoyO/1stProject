/* My name is Your Name 
I am X years old 
I live in XX State 
I attend class daily (true/false)
I am x.xx feet tall
*/

string name = 'Olesya Tolstoy';
integer age = 42;
string state = 'Illinois';
boolean attend = true;
decimal height = 5.6;

system.debug('My name is '+ name + '. I am '+ age + '. I live in '+ state + '. I attend class daily ' + attend + '. I am '+ height + ' tall.');

String studentName         = 'Okan' ;
Integer studentAge         = 35 ; 
String studentState     = 'CA';
Boolean attendClass     = true ;  
Decimal studentHeight     = 5.1 ; 


System.debug('My Name is ' +  studentName  + '.'  );
System.debug('I am ' +  studentAge + ' years old.'   );
System.debug('I live in ' + studentState + ' State.' );
System.debug('I attend class daily ' + attendClass);
System.debug('I am ' + studentHeight + ' feet tall');  


/*Integer num1 = 10;
  integer num2 = 20;
  integer num3 = 30;*/

integer num1 = 10, num2 = 20, num3 = 30;

// Relational Operators   > , >= , < , <= , == , != <> 
// it take two items and return true or false result 

// Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 =  num1 > num2 ;   //false
System.debug('Is Num1 Greater Than Num2 : ' + isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 =   num2<num3 ;   //true
System.debug('Is Num2 Less Than Num3 : ' + isNum2LessThanNum3 );

//Compare num1 is greater than or equals num3 and directly print out the results 
//in this format: Is Num1 Greater Than Num3: falseOrTrue

system.debug('IS Num1 greater than Num3: ' + (num1 >=num3));

// == checking for equality of 2 items, = is assignment operator

//check if num3 value is 30 or not, 31 or not, num2?

system.debug(num3 == 30);
system.debug( num3 == 31);
system.debug(num3 == num2);
system.debug('Is num2 and num3 equal? : ' + (num2 == num3));

// checking for Inequality of 2 numbers  <>, !=

system.debug('Is num2 not num3 equal?: ' + (num2 <> num3));
system.debug('Is num2 not num3 equal?: ' + (num2 != num3));


String language = 'Apex';
// == on string equality check is case insensitive
system.debug('IS the language Apex or not: '+ (language == 'aPeX'));

// Logical operators: And (&&) OR (||)
integer num4 = 40, num5 = 50, num6 = 60;

// is num4 more than 20 and less than 45
//store the result into boolean variable and print it out 

boolean isNum4Between20and45 = num4 >20 && num4 < 45; 
system.debug('Is num4 between 20 and 45: ' + isNum4Between20and45);
system.debug('Is ' + num4 + ' between 20 and 45: ' + isNum4Between20and45);
    
boolean isNum5greater100orLessThan20 = (num5 >100) || (num5 < 20);
system.debug('Is ' + num5 + ' greater than 100 and less than 20 : ' + isNum5greater100orLessThan20);

system.debug(isNum5greater100orLessThan20);
system.debug(!isNum5greater100orLessThan20);
 

// compound operator. : +=, _=, *=, /=
integer Score = 100;
// increase the value of the score by 5 
//score = score + 5;
score += 5;
system.debug(score);

// decrease the value of the score by 55
//score = score - 55;
score -= 55;
system.debug(score);

//double the value of score 
//score = score * 2;
score *= 2;
system.debug(score);

//divide the current value os score by 4 and reassign 
//score = score / 4;
score /= 4;
system.debug('Divide the current value of score by 4. The result is ' + score);



// using += for String 
String newName = 'Jon';
//newName = newName + ' Snow';
newName += ' Snow';
newName += ' of Winffield';
system.debug('Name: ' + newName);

integer age = 20;
// increase the value by 1
//age = age + 1; //21
//age +=age + 1; //21
++age; 
system.debug('Age is ' +age);

// decrease the value by 1
//age = age - 1; //20
//age -=age + 1; //20
--age; 
system.debug('Age is ' + age);
