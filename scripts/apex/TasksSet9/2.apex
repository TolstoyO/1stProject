/*2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out*/

List<String> words = new List<String>{
  'apples',
  'banannas',
  'cucumbers',
  'drumb',
  'eggs',
  'flamingo',
  'google',
  'house',
  'igloo',
  'jj'
};
integer count = 0;
for (String each : words) {
  if (each.length() > 5) {
    System.debug(each);
    count++;
  }
}
System.debug('there are ' + count + ' words with more than 5 charecters');
