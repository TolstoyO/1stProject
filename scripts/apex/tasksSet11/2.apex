/**
 Given a String variable message contains long string 
   - for example :  'aaabbcccccddhhhhhhzzzz'
   - Get a List<String> out of this String containing each characters 
   - Create an empty Map<String,Integer> called letterFrequencyMap
   - Loop through your list 
     - store each character as key 
     - store frequency of each character as value into the map
     - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
   - Loop through this Map (using keySet of course)
     - print out the characters showed up more than twice 
     - the result should be c , h , a , z  */

String message = 'gsghdhdjdjkllldpppeoeocijjkl';
List<String> newMessage = message.split('');

Map<String, Integer> letterFrequencyMap = new Map<String, Integer>();
for (String each : newMessage) {
  if (!letterFrequencyMap.containsKey(each)) {
    letterFrequencyMap.put(each, 1);
  } else {
    integer count = letterFrequencyMap.get(each);
    ++count;
    letterFrequencyMap.put(each, count);
  }
}
system.debug(letterFrequencyMap);

for (String each : letterFrequencyMap.keySet()) {
  if (letterFrequencyMap.get(each) > 2)
    System.debug(each);
}


