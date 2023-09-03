/**
Creating CONTACT var and initilize it to it's value 
 */

 Contact c1 = new Contact();
 c1.FirstName = 'Zeynep';
 c1.LastName = 'Yildiz';
 c1.Email = 'zeynep@force.com';
 System.debug('new contact is: '+ c1);

// version 2 of step1
 Contact c2 = new Contact(FirstName = 'Olesya', LastName = 'Tolstoy', Email = 'olesya.tolstoy@gmail.com');
 System.debug('new contact is: '+ c2);

 System.debug('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

 //create a list of contacts and initialize it's value 
 List <Contact> contacts = new List<Contact>();
 //store 2 contact instances into the list
contacts.add(c1);
contacts.add(c2);
contacts.add(new Contact(FirstName = 'O', LastName = 'T', Email = 'ot@gmail.com'));
System.debug('new contacts in the list are: '+ contacts);

 System.debug('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

//print out the first contact in the list 
System.debug('first item in the list : '+ contacts.get(0));
System.debug('first item in the list : '+ contacts[0]);

 System.debug('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

//print out the first name in the list as first item, Last name as second one

String c1FirstName = contacts.get(0).FirstName;
System.debug('onnn : '+ c1FirstName);

insert contacts;