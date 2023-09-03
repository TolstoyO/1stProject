List<Integer> numberList = new List<Integer>{17, 22, 69, 73, 42,  31, 63};
system.debug('numberList value is: '+ numberList);
numberList.add(100);
//add (index, value)
//add value 999 into index location 0 
numberList.add(0, 999);
system.debug('numberList value is: '+ numberList);
//add value  888 into index location 2 
numberList.add(2, 888);
system.debug('numberList value is: '+ numberList);
//add value 

numberList.set(0,777);
system.debug('numberList value is: '+ numberList);

// add (adding value to the end of the list)
//add (i,x); adding value to the particular location (index)
//list.set(i.x); replace value (x) at the particular location
//list.remove the value at the particular index

numberList.remove(2);
system.debug('numberList value is: '+ numberList);

//how to find the index of certain element in the list 
//indexOf (value to be checked)
//return the index if found, return -1 if not found!!
Integer indexOf22 = numberList.indexof(22);
system.debug('index of 22 is: '+ indexOf22);
// remove 22 from the list 
numberList.remove(indexOf22);
system.debug('numberList value is: '+ numberList); 

//contains (value to check)
// return true if the value exist, return false if not 

System.debug('List contains number 31 : ' + numberlist.contains(31));


//Print out FOUND IT if you see 66 in the list 
//store the result into Boolean variable 
//and print it out at the end 

Boolean has66 = false ; 

for(Integer each : numberList) {
    //System.debug('Current value : ' + each);
    if( each==66 ){
        System.debug('FOUND IT'); 
        has66 = true ; 
        break; 
    }
}

System.debug('has66 value is : ' + has66); 

// clear() method  remove all items in the list 
numberList.clear() ; 

// isEmpty()  // return true if the size is 0 
              // return false if size is not 0
Boolean lstHasNumbers =  numberList.isEmpty() ; 
System.debug('lstHasNumbers value is : ' + lstHasNumbers); 

 