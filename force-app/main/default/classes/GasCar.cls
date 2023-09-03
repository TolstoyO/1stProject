public class GasCar extends Car{

    public Integer tankCapacity;

    public GasCar(String model, Decimal price, Integer tankCapacity){
        super(model,price);
        this.tankCapacity = tankCapacity;
    }
     public override void drive(){
        System.debug('Car '+ this.model + ' is driving on Gas');
     }

     public void fillupGas(){
        System.debug(this.model + ' is filling up gas');
     }
}