/*4. Write a program that 
   - create two string variables with values
   - print 'Its not anagram!!' they are the same' if they are equal
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other*/

   String word = 'heart';
   String word2 = 'earth';

   if (word == word2){
    system.debug('Its not anagram!!');
   }
   if (word.containsOnly(word)&& word2.containsOnly(word)){
    System.debug('Its anagram!!');
   }else {
    System.debug('Its not anagram!!');
   }
