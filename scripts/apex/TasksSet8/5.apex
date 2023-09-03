//5. Write an Apex code that 
//   - print 10 random Integer values between 1-1000 in 10 lines (loop)


for (Integer i = 0; i < 10; i++) {
  Double dbl1 = Math.random() * 1000;
  System.debug('random integer value is : ' + dbl1.intValue());
}