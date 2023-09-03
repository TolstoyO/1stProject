/**
1. Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 
 */

 Map<String,Integer> groups = new Map<String,Integer>();
 groups.put('Group1', 10);
 groups.put('Winterfell Vacation', 11);
 groups.put('Group3', 8);
 groups.put('Group4', 12);
 groups.put('Group5', 10);

 System.debug('is there a group called Apex Soldiers  : ' + groups.containsKey('Apex Soldiers')); 

   if(groups.containsKey('Winterfell Vacation')){
      Integer vMemberCount =  groups.get('Winterfell Vacation');
      groups.remove('Winterfell Vacation');
      groups.put('Winterfell Coders', vMemberCount);
   }
System.debug('groups value is : ' + groups); 

for (String each: groups.keySet()){
if (groups.get(each) == 10){
 groups.put(each,9);
}
}
System.debug('groups value is : ' + groups);