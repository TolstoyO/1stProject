//8. Create an String Array with 10 elements and print them in reverse order
String[] groceries = new String[10];
groceries[0] = 'Milk';
groceries[1] = 'Bread';
groceries[2] = 'Beef';
groceries[3] = 'Pasta';
groceries[4] = 'Apples';
groceries[5] = 'Salad';
groceries[6] = 'Banana';
groceries[7] = 'Peach';
groceries[8] = 'Cucumbers';
groceries[9] = 'Tomato';

for (Integer i = groceries.size() - 1; i >= 0; i--)
  System.debug(groceries.get(i));

//9. Create an Boolean Array with 10 elements and count the the number of true value

Boolean[] trueOrFalse = new Boolean[10];
trueOrFalse[0] = true;
trueOrFalse[1] = true;
trueOrFalse[2] = true;
trueOrFalse[3] = true;
trueOrFalse[4] = false;
trueOrFalse[5] = true;
trueOrFalse[6] = false;
trueOrFalse[7] = true;
trueOrFalse[8] = true;
trueOrFalse[9] = false;

Integer count = 0;

for (Boolean each : trueOrFalse) {
  if (each == true)
    count++;
}
System.debug('the number of true value is: ' + count);
