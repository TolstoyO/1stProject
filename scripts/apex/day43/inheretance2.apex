/**  Car as Parent
 *     fields : 
            model
            price
 *     constructor :      
           2 parameter constructor to set model and price 
       methods : 
        drive

    // ElectricCar
 *     fields : 
            batteryCapacity
 *     constructor :      
           3 parameters constructor to set model, price and batteryCapacity
    // GasCar
 *     fields : 
            tankCapacity
 *     constructor :      
           3 parameters constructor to set model, price and tankCapacity

 Build parent child relationship between Car-GasCar  Car-ElectricCar
*/



ElectricCar ec1 = new ElectricCar('Tesla x ', 95000, 10);
System.debug(ec1);
ec1.drive();

ElectricCar c2 = new ElectricCar ('Toyota', 70000, 15);
System.debug(c2);
c2.drive();
c2.recharge();

GasCar g1 = new GasCar('Genises', 709000, 78);
System.debug(g1);
g1.drive();
g1.fillupGas();