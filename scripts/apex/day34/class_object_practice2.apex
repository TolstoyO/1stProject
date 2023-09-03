//Student s1 = new Student ();
//System.debug(s1);


//Student s2 = new Student ();
//System.debug(s2);

//Student s3 = new Student('Olesya', 'Tolstoy', 222888);
//System.debug(s3);

/**House h1 = new House ();
System.debug(h1);

House h2 = new House ('Victorian');
System.debug(h2);

House h3 = new House('Victorian', 2023, true, 5000);
System.debug(h3);
*/

BankAccount b1  = new BankAccount ('Zhamilia', 123456764, 1300000);
b1.showDetails();


Student s4 = new Student('Abbas', 'Moose', 101987);
s4.study(12);

List <Student> studentList = new List<Student>();
studentList.add(new Student ('Anna', 'Vasilenko', 20003));
studentList.add(new Student ('Hanna', 'Elenko', 20233));
studentList.add(new Student ('Olys', 'Smiilenko', 20403));
studentList.add(new Student ('Arka', 'Kkorko', 243333));
studentList.add(new Student ('Kolaa', 'Frwwem ', 224403));

System.debug(studentList);

//loop through each item in the list 
//