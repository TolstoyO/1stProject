List<Integer> numberList = new List<Integer> {65,80,83,49,48};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug(' high number value is: '+ highNum);

List<Integer> numberList2 = new List<Integer> {10,17,66,23,078};

System.debug(' high number value is: '+ Helper.getHighestNumber(numberList2));

System.debug ('the sum of the list 1 numbers '+ numberList+' is: '+ Helper.getTotal(numberList));
System.debug (Helper.getTotal(numberList2));

System.debug(Helper.getAverage(numberList));
System.debug(Helper.getAverage(numberList2));


List<String> names = new List<String> {'Suat', 'Esra', 'Tamara', 'Dzhamilya', 'Nelishan', 'Yagut'};

System.debug(Helper.getLongerName(names));