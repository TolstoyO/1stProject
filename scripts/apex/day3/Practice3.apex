String studentName         = 'Okan' ;
Integer studentAge         = 35 ; 
String studentState     = 'CA';
Boolean attendClass     = true ;  
Decimal studentHeight     = 5.10 ; 
/*
System.debug('My Name is ' +  studentName  + '.'  );
System.debug('I am ' +  studentAge + ' years old.'   );
System.debug('I live in ' + studentState + ' State.' );
System.debug('I attend class daily ' + attendClass);
System.debug('I am ' + studentHeight + ' feet tall');
*/
System.debug('My Name is ' +   studentName  
             + '. I am ' +  studentAge + ' years old.' 
             + 'I live in ' + studentState + ' State.'
             + 'I attend class daily ' + attendClass
             + 'I am ' + studentHeight + ' feet tall' );


// Assignment Operator = 
// Compound assignment operator += , -=, *= , /=
// Increment and Decrement Operator  ++  --

// Relational (Comparision) Operators  >, >=, <, <=, == , != , <>
// compare two items and return Boolean result (true|false)

// Logical Operators  && (AND)  || (OR)   !(NOT)


// Shortcut for declaring and assigining multiple variables of same type 
Integer num1 = 100, num2= 200, num3= 300 ; 

Decimal price1 = 699.99 , price2 = 799.99 ,  price3 = 1100.99 ; 

// print out the result of price1 is greater than price3 

System.debug('Is price1 is greater than price3 : '  + (price1 > price3)    );


// store the result of price1 greater than price2 AND price2 less than price3
// into a Boolean variable and print it out 

Boolean result1 = (price1 > price2)  &&  (price2< price3) ;
System.debug('Result of price1 greater than price2'
             +' AND price2 less than price3: ' 
             + result1);
// Inreament and Decreament of the variable to increase/decrease the value by one

//++ used in the beginning of the variable is called pre-increment  ++score 
//++ used in the end of the variable is called post-increment  score++
//-- used in the beginning of the variable is called pre-decrement  --score 
//-- used in the end of the variable is called post-decrement  score--

integer count = 10;
system.debug('value of count: '+ count);//10
system.debug('value of ++count: ' +     ++count); //11
system.debug('value of --count: ' +     --count); //10

system.debug('value of ++count: ' +     count++);//10 right now, next time +1
system.debug('the current value of count: ' + count); //11

system.debug('value of count--: ' +     count--); //11 right now, next time -1
system.debug('the current value of count: ' + count); //10

// current value of count is 10 
system.debug(count++    +'--------' +   count); // 10 ------11
system.debug(count--    +'-------'+ count);   // 11 ---- 10

// current value of count is 10 
system.debug(++count    +'--------' +   count); //11 ---- 11
system.debug(--count    +'--------' +   count); // 10-------10

// Conditional statements: conditionally execute part of the code

integer examScore = 88;

// if exam score is more than 66 
// show debug message passed, otherwise show failed

/* IF statement without ELSE
IF (examScore > 66) {
    system.debug('Passed');
}
*/

//if exam score is more than 66
//show debug message passed; otherwise show failed

if(examScore>66){
    system.debug('Passed');} else{
        system.debug('');
    }


if (examScore > 66){
    system.debug('Passed');
    system.debug('Congrats!');
}else {
    system.debug('Failed');
    system.debug('Try again Later');
}


// Create a String variable to store studentName
// give value 
//if the value equal FAdy, print clockmaster
//else print No Break

String studentName = 'Osman';

if (studentName == 'Fady'){
    system.debug('Clockmaster');
}else{
    system.debug('No Break');
}

//CReate a variables: 
// annualRevenue as Integer and initialize it's value 
// rating as String 

/* If the annualRevenue greater than 100000
assign the value of rating to hot
otherwise assign the value of rating to cold
print out the rating variable outside your if statement
*/

//integer annualRevenue = 5000000;
//string rating; 

/*if (annualRevenue > 100000){
    rating = 'Hot';
} else {
    rating = 'Cold';  
}
system.debug('Rating is ' + rating);
*/

// ternary operator can be used to 
// conditionally asign the value of a variable 
// DataType yourVariableName = (condition) ? TrueValue : FalseValue;

Integer annualRevenue  = 5000;
String rating = (annualRevenue > 100000)? 'Hot' : 'Cold'; 
system.debug('Rating is '+ rating);

//declare and initilaze a variable called score1
//declare a String variable called examResult
// assign the value of examResult according to the score1 > 66 or not 

integer score1 = 67;
String examResult = (score1>66) ? 'Pass' : 'Fail';
System.debug('Exam Result: ' +examResult);

// declare and  initiate a variable called salary as Integer 
//declare a Double variable called taxRate
//assign the value of taxRate according to below condition
// if the salary is greater than 100K, taxRate is 0.3 else 0.15

integer salary = 150000;
double taxRate; 
/*
if(salary>100000){
    taxRate = 0.3;
} else {taxRate = 0.15;}
*/

taxRate = (salary> 100000)? 0.3 : 0.15;
system.debug(taxRate);


// if the score is less than 0 or more than 100 
// print invalid score 
// else 
// print valid score 


Integer score2 = 77 ; 

if( score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else{
    System.debug('Valid score');
}


// Multi Branch if statement 

// if the score is less than 0 or more than 100 
// print invalid score 
// if the score is more than 90 print A 
// if the score is between 80 and 90 print B
// if the score is between 70 and 80 print C
// else print work harder 

Integer score2 = 99 ; 


if( score2 > 100 || score2 <0 ){
    System.debug('Invalid Score');
}else if(score2 > 90){
    System.debug('You got A');
}else if(score2 > 80){
    System.debug('You got B');
}else if(score2 > 70 ){
    System.debug('You got C');
}else{
    System.debug('Try Harder');
}



// declare a String variable called season 
// and initialize it's value 
/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumkin
if it's wintet   print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'summer' ; 
if (season == 'spring'){
    system.debug('Go Camping');
}else if (season == 'summer'){
    system.debug('Go Swimming');
}else if (season == 'fall'){
    system.debug('Go Pick Pumpkin');
}else if ( season == 'winter'){
    system.debug('Go to Sleep');
} else {system.debug('Invalid Season');
       }
