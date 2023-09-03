public class Dog extends Animal {
    public String breed;

    //constructor
    public Dog (String name, Integer age, String breed){
        super(name,age);
        this.breed = breed;
    }
    //and overriden makeNoise method 
    public override void makeNoise(){
        System.debug('Dog will bark: Woof!');
    }

    public override String getInfo(String food){
        return ('Dog name ' + this.name + ' eats '+ food);

    }
}