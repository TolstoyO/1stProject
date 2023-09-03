/** 
Set is a colllection of unique elements 
it's an unordered collection meaning there is no index 
order is not guaranteed */
Set<Integer> numberSet = new Set<Integer>();
numberSet.add(10);
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(15); 
numberSet.add(18); 
numberSet.add(344); 
numberSet.add(10); 

System.debug(numberSet);

// size() : 
System.debug('Set size  value is : ' + numberSet.size()); 

//clear (): deletes all items in a SET
numberSet.clear();

// isEmpty(): return true is size is 0
System.debug('numberSet is emty  : ' + numberSet.isEmpty()); 


numberSet.add(15); 
numberSet.add(18); 
numberSet.add(344); 
numberSet.add(10);
System.debug(numberSet);

// contains (valueToCheck): returns true if item exist, false if not 
System.debug('numberSet contains 15?: ' + numberSet.contains(15));
System.debug('numberSet contains 22?: ' + numberSet.contains(22));

// remove(valueToDelete) 
numberSet.remove(344);
System.debug('Value set is : ' + numberSet);

//you can not loop through set for loop because there is no index
//code snippet: ForEach
// hit tab to select data type if needed 
//update the collection name


Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
System.debug('strSet1 value is : ' + strSet1); 
//strSet1 value is : {item1, item2, item3, item4, item5}


// Creating a set by copying everything inside another Set 
Set<String> strSet2 = new Set<String>(strSet1);
System.debug('strSet2 value is : ' + strSet2); 
//strSet2 value is : {item1, item2, item3, item4, item5}



List<Integer> numberList = new List<Integer>{10,10,20,20,20};
System.debug('numberList value is : ' + numberList); 
//numberList value is : (10, 10, 20, 20, 20)

// Creating a set by copying everything inside a List 
Set<Integer> numberSet2 = new Set<Integer>(numberList);
System.debug('numberSet2 value is : ' + numberSet2); 
//numberSet value is : {10, 20}

/**
    We can create a List by copying the content of another set or list
 */

List<Integer> numberList1 = new List<Integer>{64,55,34,86,31};
System.debug('numberList1 value is : ' + numberList1); 

//// Creating a List by copying everything inside another List
List<Integer> numberList2 = new List<Integer>(numberList1);
System.debug('numberList2 value is : ' + numberList2); 


Set<Integer> numberSett = new Set<Integer>{23,71,44,71,43};
System.debug('numberSet value is : ' + numberSett); 
//// Creating a List by copying everything inside a Set
List<Integer> numberList3 = new List<Integer>(numberSett);
System.debug('numberList3 value is : ' + numberList3); 


// if you already have a list created 
// and if you want to add all the elements from another list 
// for example numberList1 has 5 items , numberList3 has 5 items 
// add everything in numberList1 into numberList3 so it can have 10 items 

numberList3.addAll(numberList1) ; 
System.debug('numberList3 value is : ' + numberList3); 


// addAll method either accept another list or set , to add all the element into this list that calling addAll method

// add all the elements from numberSet into numberList1 ; 
numberList1.addAll(numberSet) ; 
System.debug('numberList1 value is : ' + numberList1); 