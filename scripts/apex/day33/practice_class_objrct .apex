Person p1 = new Person();
p1.name = 'Hakan';
p1.age = 18;
p1.height = 178.5;

p1.printName();
p1.printAge();
p1.changeName('Hakan 2.0');
p1.printName();
p1.setAgeAndHeight(33, 176.3);
p1.describePerson();
p1.setPersonInfo('Pupsik', 33, 134.4);

System.debug('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$');

Person p2 = new Person();
p2.name = 'Marina';
p2.age = 20;
p2.height = 158.5;

System.debug(p2);
 p2.printName();
 p2.printAge();
 p2.changeName('Marina AI'); 
 p2.printName();
 p2.setAgeAndHeight(28, 176.2);
 p2.describePerson();
 p2.setPersonInfo('MarinaPP', 54, 165.8);