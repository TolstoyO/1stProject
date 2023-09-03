/**
String is a Data type to Store text 

It has a lot of reusable methods that we can use directly 
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods

 */

String message = 'Hello World 1' ; 

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the character count inside the String 

System.debug('message.length() value is: ' + message.length());

//isEmthty() method: returns true if it's not  '' or null else false 
System.debug(string.isEmpty(message));

String msg1 = '  ';
System.debug(String.isEmpty(msg1));

//isBlank method: returns true if the specified String is white space, empty space, null, otherwise returns false 
System.debug(String.isBlank(msg1));

//toUpperCase () return the UPPERCASE version
System.debug('message to UpperCase() '+ message.toUpperCase());

//toLowerCase() returns the LOWCASE version 
System.debug('message to UpperCase() '+ message.toLowerCase());


String season = 'SUMMER';
switch on season.toLowerCase() {
    when 'spring' {
        System.debug('value spring match');
    }
    when 'summer' {
        System.debug('value summer match');
    }
    when 'fall' {
        System.debug('value fall match');
    }
    when else {
        System.debug('nothing match');
    }
}


// -------------- Checking for String contains some substring
/**
contains(substring) 
Returns true if and only if the String that called the method contains the specified sequence of
characters in substring.

Example :
'abcd' contains 'ab'  true
'abcd' contains 'ac'  false


*/

System.debug('message.contains (\'Hello\') value is: '+ message.contains('Hello'));
System.debug('message.contains (\'Hello\') value is: '+ message.contains('hello'));//case sensetive
System.debug('message.contains (\'Jon\') value is: '+ message.contains('Jon'));

System.debug('message.contains (\'Hello\') value is: '+ message.containsIgnoreCase('Hello'));//ignors case

System.debug('message.contains (\'Hello\') value is: '+ message.contains('Hello'));


System.debug('message.contains (\'Hello\') value is: '+ message.containsNone('hlo')); //not case sensetive 
System.debug('message.contains (\'Hello\') value is: '+ message.containsNone('AB'));


System.debug('message ha no number (\'Hello\') value is: '+ message.containsNone('0123456789'));

String text = 'aaaaoooeee'; 
System.debug('text variable value is : ' + text); 
// check if this text only contains vowel : a e o u i 
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')  ); 

System.debug('------Equality------------');
System.debug('is message == Hello World ' +    ( message=='Hello World' )       ); //true
System.debug('is message == hello world ' +    ( message=='hello world' )       ); //true

// equals(anotherString) method for checking equality in case sensitive manner

System.debug('message.equals(\'Hello World\') value is : ' 
                                    + message.equals('Hello World')); 

System.debug('message.equals(\'hello world\') value is : ' 
                                    + message.equals('hello world')); 

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.
This is literally the method version of == 
 */
System.debug('message.equalsIgnoreCase(\'hello world\') : ' 
                            + message.equalsIgnoreCase('hello world') ); 


/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 

String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str); 

System.debug('------------------');
/**
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters and not any other characters; otherwise, returns false.
 */
// Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 


String text = 'aaaaoooeee'; 
System.debug('text variable value is : ' + text); 
// check if this text only contains vowel : a e o u i 
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')  ); 

System.debug('------Equality------------');
System.debug('is message == Hello World ' +    ( message=='Hello World' )       ); //true
System.debug('is message == hello world ' +    ( message=='hello world' )       ); //true

// equals(anotherString) method for checking equality in case sensitive manner

System.debug('message.equals(\'Hello World\') value is : ' 
                                    + message.equals('Hello World')); 

System.debug('message.equals(\'hello world\') value is : ' 
                                    + message.equals('hello world')); 

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.
This is literally the method version of == 
 */
System.debug('message.equalsIgnoreCase(\'hello world\') : ' 
                            + message.equalsIgnoreCase('hello world') ); 


/**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 

String str = 'abcabc';
/**
remove(substring)
Removes all occurrences of the specified substring and returns the String result.
 */ 
 System.debug('str.remove(\'a\') value is : ' + str.remove('a') ); 
 str = str.remove('a'); 
 System.debug('str value is : ' + str); 
