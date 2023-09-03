/*# String methods: 

## equals(stringOrId)
Returns true if the passed-in object is not null and represents the same binary sequence of characters as the current string. Use this method to compare a string to an object that represents a string or an ID.

## equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.

## reverse()
Returns a String with all the characters reversed.

## indexOf(substring)
Returns the index of the first occurrence of the specified substring. If the substring does not occur, this method returns -1.

## indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from the point of the given index. If the substring does not occur, this method returns -1.

## indexOfIgnoreCase(substring)
Returns the zero-based index of the first occurrence of the specified substring without regard to case. If the substring does not occur, this method returns -1.

## left(length)
Returns the leftmost characters of the current String of the specified length.

## right(length)
Returns the rightmost characters of the current String of the specified length.

## mid(startIndex, length)
Returns a new String that begins with the character at the specified zero-based startIndex with the number of characters specified by length.

## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or the end of the String.
*/


//## reverse()
//Returns a String with all the characters reversed.

String message = 'Good Morning';
String reverseMessage = message.reverse();
System.debug('reverseMessage value is: '+ reverseMessage);

//A palindrome is a word, number, phrase, or other sequence of symbols that reads 
//the same backwards as forwards, such as the words; madam, racecar, mom, dad, kayak,rotator
// write a code to check if the string is polindrome or not 

String word = 'aha';
String reverseWord = word.reverse();
if (word == reverseWord){
    System.debug('Palindrome');
}else {
    System.debug('NOT a Palindrome');
}


word = word.toUpperCase();
System.debug(word); 

//## indexOf(substring)
//Returns the index of the first occurrence of the specified substring. If the substring does not occur,
// this method returns -1.

String str1 = 'Hello World!';
System.debug('str1 value is: '+ str1);

System.debug('str1 value is: '+ str1.indexOf('o'));
System.debug('str1 value is: '+ str1.indexOf('Wor')); // case sensetive
System.debug('str1 value is: '+ str1.indexOf('wor')); //case sensetive
System.debug('str1 value is: '+ str1.indexOf('WorX'));
System.debug('str1 value is: '+ str1.indexOf('Worx'));


//## indexOf(substring, index)
//Returns the zero-based index of the first occurrence of the specified substring from the point of the given index.
// If the substring does not occur, this method returns -1.
//index    012345678910
//         Hello World!

System.debug(' str1.indexOf(\'o\', 5) value is: '+ str1.indexOf('o', 5));
System.debug(' str1.indexOf(\'o\', 9) value is: '+ str1.indexOf('o', 9));

//## left(length)
//Returns the leftmost characters of the current String of the specified length.

String str2 = 'abcdefg';
System.debug('all letters: ' + str2);
System.debug('first letter : ' + str2.left(1));
System.debug('first 3 letters : ' + str2.left(3));
System.debug('str2.left(300) : ' + str2.left(300));// if we go out of range, it returns all string 

//## right(length)
//Returns the rightmost characters of the current String of the specified length.
System.debug('first letter from string end : ' + str2.right(1));
System.debug('first  2 letters from string end : ' + str2.right(2));
System.debug('out of range will give the whole string: ' + str2.right(300)); 


//## mid(startIndex, length)
//Returns a new String that begins with the character at the specified zero-based startIndex 
//with the number of characters specified by length.

System.debug(' 2 characters starting from index 3: '+ str2.mid(3,2));

//print out first and last character of the string 
System.debug('first and last characters: '+ str2.left(1)+' and '+ str2.right(1));

//get last 2 characters then get the first one of that: abcdefg=>fg=. f
String secondFromLast = str2.right(2).left(1);
System.debug('value is: ' + secondFromLast);

//solution 2: find index of 2nd char.from the last 
//use mid to start from that index and get 1 char.
//index    012345678910
//         Hello World!
System.debug('Index of 2nd char from the end of string: '+ (str2.length()-2));

// mid(startingIndex, characterCountYouWant) ; 
String secondFromLastChar =  str2.mid( str2.length()-2 ,  1 ); 
System.debug('secondFromLastChar value is : ' + secondFromLastChar); 

// method chaining
String str = 'cookie';
System.debug('result value is :' + str);

String result = str.toUpperCase().left(4).reverse();

System.debug('result value is :' + result);

//## split(regExp)
//Returns a list that contains each substring of the String that is terminated by either the regular expression regExp
// or the end of the String.

String message1 = 'VA Weather is beautiful today';

List <String> wordList  = message1.split(' ');
System.debug('How many words the sentense has: ' + wordList.size());

for (String each : wordList){
    System.debug('Curent value: '+ each + '; legth is: '+ each.length());
}


String name = 'MArio Cruz';
List<String> charList = name.split('');
System.debug('charlist value is : '+ charList);