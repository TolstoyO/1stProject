/**
List is a clollection type that store elements in insertion or 
each and every elements are stored in a postion that start with 

for example if you have below list 
              item 1 2 3 4 5 6*/
List<Integer> numList = new List<Integer>{ 19, 1, 23, 7, 11, 99, 100, 44 };
// get the element at certain index using get method
// get the first element and store in a variable

integer item1 = numList.get(0);
system.debug('first item value ' + item1);

// directly printout the  second item value using get method
system.debug('Second item value ' + numList.get(1));
system.debug('Second item value ' + numList.get(2));
system.debug('Second item value '+ numList.get(3 ));

system.debug(numList);

system.debug('*********************************************');

//iterate over all the elements in the loop without for each loop

for (Integer index = 0; index<6; index++){
    system.debug(numList.get(index));
}