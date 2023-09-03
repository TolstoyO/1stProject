/*3. Create a List of 10 String
   - get the count of String even character count
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
  if (Math.mod(each.length(), 2) == 0) {
    count++;
  }
}
System.debug(count + ' item with even character count');