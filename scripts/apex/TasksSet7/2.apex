/*2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array*/

   List <Integer> numberList  = new List <Integer> {90,79,23,34,55,56,43,23,88,66};
   //in order to get the itemat certain loscation we use index
   //in order to get last 3 items, we need index of those 3 
   //last item:            numberList.size()-1 ==>9
   //second from the last: numberList.size()-2 ==>8
   //third from the last:  numberList.size()-3 ==>7

   Integer[] last3Items= new Integer[3];
   last3Items[0] = numberList.get(numberList.size()-3);
   last3Items[1] = numberList.get(numberList.size()-2);
   last3Items[2] = numberList.get(numberList.size()-1);


  System.debug('numbers in numberList are: '+ numberList);
  System.debug('LAst 3 items ' + last3Items);
   
