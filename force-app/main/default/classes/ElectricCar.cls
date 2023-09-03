public with sharing class ElectricCar extends Car {

    public Integer batteryCapacity;
    public ElectricCar(String model, Decimal price, Integer batteryCapacity) {
        super(model, price);
        this.batteryCapacity =batteryCapacity;

    }

    public override void drive(){
        System.debug ('Car '+ this.model + ' is driving on Electricity');
    }
    public void recharge(){
        System.debug( this.model + ' is re-charging');
    }
}