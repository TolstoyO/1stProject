/**
you can exit any type of loop using break when needed  */
//create a list of integer

List<Integer> numList = new List<Integer>{7, 12, 15, 10, 17, 100, 4};
// loop through each and every item, when you find 10, stop looping

for (Integer eachNum : numList){
    system.debug(eachNum);
    if (eachNum == 10){
        system.debug('YAY');
        //in order to break the looop to stop looking
        // you can use break statement
        break; 
    }
}

