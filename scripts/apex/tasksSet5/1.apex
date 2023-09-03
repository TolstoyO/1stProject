/* Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print end with what we started 
   else print different beginning and ending 
    HINT : No Loop Needed Here */

List<Double> num = new List<Double>{
  32.95,
  14.59,
  35.99,
  10.60,
  98.99,
  69.99,
  70.39,
  14.55,
  97.98,
  32.95
};
Double firstValue = num.get(0);
System.debug('First value of the list is : ' + firstValue);

Double lastValue = num.get(num.size() - 1);
System.debug('Last value of the list is : ' + lastValue);

if (firstValue == lastValue) {
  System.debug('End with what we started.');
} else {
  System.debug('Different beginning and ending');
}
