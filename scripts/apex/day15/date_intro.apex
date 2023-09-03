//Creating Data variable and assigning the value to Today's date 
//today method of Date Class will return Todays date 
Date d1 = Date.today();
System.debug('day value is: '+ d1);

 // Creating a date with any year, month, day 
 /**
 newInstance(year, month, day)
Constructs a Date from Integer representations of the year, month (1=Jan), and day.
 */
 Date d2 = Date.newInstance(1999, 9, 17) ; 
 System.debug('d2 value is: ' + d2);
 
 
 Date weekafterd2 = d2.addDays(7); 
 System.debug(' a week after d2 value is: ' + weekafterd2);

 Date weekbefored2 = d2.addDays(-7);
 System.debug('week before D2 value is: ' + weekbefored2);