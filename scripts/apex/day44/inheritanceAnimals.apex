//Animal a1 = new Animal('abc', 2); this will not work , can't create object out of abstract 
Dog d1 = new Dog('Sharik',3, 'Golden Retriver');
System.debug(d1);
d1.makeNoise();
System.debug(d1.getInfo('Hills'));

Cat c1 = new Cat ('Tom', 2, 'blue');
System.debug(c1);
c1.makeNoise();
System.debug(c1.getInfo('Friskis'));

List <Animal> animalList = new List<Animal>();
animalList.add(new Dog ('Bobik', 4, 'Terrier'));
animalList.add(new Dog('Tefik', 1, 'Shapper'));
animalList.add(new Cat('Rosi', 2, 'Blue'));
animalList.add(new Cat('Bobi', 3, 'White'));

for (Animal each: animalList){
    System.debug ('Current animal is '+ each);
    each.makeNoise();
    System.debug(each.getInfo('fish'));
}

Animal a1 = new Dog ('Sultan', 4, 'Poodle');
Animal a2 = new Cat ('Kotik', 5, 'Orange');

System.debug(a1 instanceof Dog);
System.debug(a2 instanceof Cat); 