/*3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out */

Integer[] numbers = new Integer[10];
numbers[0] = 5;
numbers[1] = 23;
numbers[2] = 23;
numbers[3] = 43;
numbers[4] = 66;
numbers[5] = 55;
numbers[6] = 66;
numbers[7] = 44;
numbers[8] = 55;
numbers[9] = 12;

List<Integer> reversed = new List<Integer>();
for (Integer i = numbers.size() - 1; i > 0; i--) {
  reversed.add(numbers[i]);
}
System.debug(reversed);