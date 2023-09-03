Car c1 = new Car();
System.debug(c1);

List<Car> carlist = new List<Car>();
carlist.add(new ElectricCar ('Tesla', 95000,10));
carlist.add(new ElectricCar('Lucid Air', 85000, 9));
carlist.add(new GasCar('BMW', 500000, 2));
carlist.add(new GasCar('Dodge', 45000, 4));

for (Car each: carlist){
    System.debug(each);
    each.drive();
}