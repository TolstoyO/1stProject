/**6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers*/

List <Integer> pens = new List<Integer>();
integer sum = 0;
integer ave;
   for (Integer i = 0; i < 10; i++) {
  Double dbl1 = Math.random() * 100;
  pens.add(dbl1.intValue());
  sum+=dbl1.intValue();
  ave = sum/pens.size();
}
System.debug('numbers in the list are: '+ pens);
System.debug('the sum of numbers in the list is: '+ sum);
System.debug('the average of numbers in the list is: '+ ave);
