/**
2. Write an Apex code to create an List of Strings with 4 items
 set the value of last item to the value of first item 
  for example original list values :  item1 , item2, item3, item4 
                   list values now :  item1 , item2, item3, item1 */

//shortcut varListWithStrValues 
List<String> strList = new List<String>{'Milk','Bread','Eggs','Salad','Apples'};

System.debug('strList value is : ' + strList); 

String firstItem = strList.get(0) ; // array syntax  strList[0]

strList.set(3, firstItem );
 
System.debug('strList value is : ' + strList); 