/**6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)*/

   Date birthday = date.newInstance(1980, 05, 22);
   System.debug('date of the birthday is: '+ birthday.day());
   System.debug('month of the birthday is: '+ birthday.month());
   System.debug('year of the birthday is: '+ birthday.year());
   System.debug('year of the birthday is leap year: '+ date.isLeapYear(birthday.year()));
   System.debug('the monthsBetween today and birthDay: '+ birthday.monthsBetween(Date.today()));
   System.debug('the daysBetween today and birthDay: '+ birthday.daysBetween(Date.today()));
