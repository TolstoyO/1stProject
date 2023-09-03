/**
1. CReate a list of DEcimal named 'cheapList' and add these elements into the list (2.75, 2.99, 8.25, 9.50, 9.99)
2. Create another list of DEcimal named 'priceList' and add these 6 elements into this
 list(15.75, 5.99, 19.25, 25.50, 9.99, 7.50)
3. if any element in the priceList is less than 10, add that element into cheapList.
5. Finally, print out the elements in both lists and the size of the list */

List <Decimal> cheapList = new List <Decimal>{2.75, 2.99, 8.25, 9.50, 9.99};
List <Decimal> priceList = new List <Decimal>{15.75, 5.99, 19.25, 25.50, 9.99, 7.50};

For (decimal eachPrice : priceList){
     if (eachPrice <10){
        cheapList.add(eachPrice);
     }
}
  
system.debug('There are ' + cheapList.size()+ ' elements in CheapList: '+ cheapList);
system.debug('There are ' + priceList.size()+ ' elements in PriceList: '+ priceList);
