/* Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30*/

Double[] prices = new Double[10];
prices[0] = 67.00;
prices[1] = 87.99;
prices[2] = 45.99;
prices[3] = 34.66;
prices[4] = 22.77;
prices[5] = 45.45;
prices[6] = 55.88;
prices[7] = 66.88;
prices[8] = 54.87;
prices[9] = 44.99;

integer count = 0;
double sum = 0;
for (Double eachPrice : prices) {
  if ((eachPrice > 10 && eachPrice < 20) || (eachPrice > 40 && eachPrice < 50))
    count++;

  if (eachPrice > 30)
    sum += eachPrice;
}
System.debug('the count of the number between 10 and 20 or 40-50 is: ' + count);
System.debug('the sum of the numbers greater than 30 is: ' + sum);
