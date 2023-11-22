List<ElectricCar>carList = new List<ElectricCar>();
carList.add(new ElectricCar ('Tesla X', 65000, 10));
carList.add(new ElectricCar ('Tesla Y', 55000, 9));
carList.add(new ElectricCar ('Tesla 3', 75000, 11));

Dealership d1 = new Dealership ('Tesla D', carList);
d1.showCars();
System.debug(d1.getCarCount());
d1.discountAllCars(5000);
d1.showCars();

System.debug('++++++++++++++++++++++++++++++++++');

List<ElectricCar>carList2 = new List<ElectricCar>();
carList2.add(new ElectricCar ('Audi1', 66000, 10));
carList2.add(new ElectricCar ('Audi2', 78000, 9));
carList2.add(new ElectricCar ('Audi3', 77000, 11)); 

Dealership d2= new Dealership ('Audi A', carList2);
d2.showCars();
System.debug(d2.getCarCount());
d2.discountAllCars(3000);
d2.showCars();

