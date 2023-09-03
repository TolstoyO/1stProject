/**

Set is a type of collection that store unique elements 
unlike List, it does not keep insertion order, it does not have the idea of position. 

Set< DataType > yourVarName = new  Set<DataType>() ; 

Set< DataType > yourVarName = new  Set<DataType>{item1,item2,..itemN} ; 

 */

 Set<Integer> scores = new Set<Integer>();
 scores.add(100);
 scores.add(678);
 scores.add(100);
 scores.add(600);
 scores.add(980);
 scores.add(100);
 scores.add(100);
 system.debug(scores);
 system.debug('count of items is: ' + scores.size());

 // create a set of string to store 10 items with single  letter charachter 

 Set<String> letters = new Set<String> {'A', 'A', 'B', 'C', 'S', 'B', 'C', 'C', 'S', 'A'};
 system.debug(letters);
 system.debug(' letters count ' +letters.size());

 for (string eachLetter : letters){
    System.debug(eachLetter);
 }