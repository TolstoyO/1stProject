/*Declare and initialize a String variable with one character
check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
if true print it's a vowel 
else print it's not a vowel!
*/

String vowel = 'd';
    switch on vowel {
        when 'a' , 'e', 'o' , 'u' , 'i' 
        {  system.debug('It is a vowel');
        }when else {
            system.debug('It is not a vowel');
        } 
    }