/*1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
*/

String name = 'olesya tolstoy';
System.debug(name.toUpperCase());
System.debug(name.toLowerCase());
System.debug(name.indexOf(' '));
System.debug(name.left(1)+'.'+ name.mid(name.indexOf(' ')+1, 1)+'.');