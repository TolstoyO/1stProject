/*Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , 
   add more items into the list and run your program again to see if it works. */

   List <Decimal> prices = new List <Decimal>{0.99, 2.44, 3.55, 4.66, 5.77, 6.88, 7.99, 8.00, 9.01, 10.99, 15.99, 66.99};{
   //print out the size of the list 
    system.debug(prices.size());

    //print out the sum of all numbers
    Decimal sum = 0;
    for (Decimal eachprice : prices){
         sum+= eachprice;
    }system.debug('total prices is ' + sum);

     //print out the average of all numbers 
    Decimal ave  = 0;
         ave= sum / prices.size();{
            system.debug('the average is: ' +ave);
         }
    }
   