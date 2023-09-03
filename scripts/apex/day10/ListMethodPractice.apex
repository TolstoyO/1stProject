/**
Creater a list of String that store 4 names 
print the item 3 
print  */

List<String> names = new List<String>();
names.add('Hakan');
names.add('Nina');
names.add('Ali');
names.add('Ilaha');
names.add('Marina');
names.add('Olesya');
names.add('Yulia');
names.add('Tom');

//print the item 3
system.debug(names.get(2));
//print the item 1
system.debug(names.get(0));

//store the value of number 2 into variable and then print out
String item2 = names.get(1);
system.debug('item2 value is ' + item2);

system.debug(names.get(0));
system.debug(names.get(1));
system.debug(names.get(2));
system.debug(names.get(3));

system.debug('***********************');


for (Integer index = 0; index < names.size(); index++){
    system.debug('Index '+ index + ' is ' + names.get(index));
}
