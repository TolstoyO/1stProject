/**
Refer Day 12 Code Extras at the end for this
10.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method
 */

Set<Integer>  numbers = new Set<Integer>{45,56,34,78,14};
Set<Integer>  numbers2 = new Set<Integer>{10,20,30,34,56};

System.debug('if all items in set 2 exists in set 1: ' + numbers.containsAll(numbers2));
System.debug('if all items in set 1 exists in set 2: ' + numbers2.containsAll(numbers));
System.debug('add all items in the set 1 into set 2: ' + numbers2.addAll(numbers));
System.debug('if all items in set 2 exists in set 1: ' + numbers.containsAll(numbers2)+ numbers);
System.debug('if all items in set 1 exists in set 2: ' + numbers2.containsAll(numbers)+ numbers2);
System.debug('remove all items exists in set 2 from set 1: '+ numbers2.removeAll(numbers)+ numbers2);


/**
11.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method */

Set<String> names = new Set<String>{'Olesya', 'Iliya', 'Phillip', 'Alex', 'Valentina'};
Set<String> names2 = new Set<String> {'Alex', 'Aida', 'Svetlana', 'Valentina', 'Samira', 'Olga'};

System.debug(names.retainAll(names2));
System.debug(names);