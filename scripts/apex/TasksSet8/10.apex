/**
10. Write an Apex code that create a role List of 10 String 
   - join each item by space and store it into a String variable joined text 
     - and print it out
   - loop through the list 
     - print out each item along with character count in each item
     - in this format : 'admin has 5 characters'

   - loop through the list 
     - if it contains('dev') print out the items in UPPERCASE
     - if it contains('admin') print out the items removing the word admin : str.remove('admin') */

List<String> roles = new List<String>{
  'Admin',
  'HR',
  'Developer',
  'CEO',
  'CFO',
  'Business Analyst',
  'WEb DEveloper',
  'DevOps',
  'SQL Developer',
  'CTO'
};
String joinedText = String.join(roles, ' ');
System.debug('joinedText value is : ' + joinedText);
for (String each : roles) {
  System.debug(each + ' has ' + each.length() + ' characters');
}
System.debug('----------------------------');

for (String each : roles) {
  if (each.contains('Dev')) {
    each = each.toUpperCase();
  }
  if (each.contains('Admin')) {
     each = each.remove('Admin');
  }
System.debug(each + ' has ' + each.length() + ' characters');
}
