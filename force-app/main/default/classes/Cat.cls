public class Cat extends Animal {
    public String color;

    public Cat (String name, Integer age, String color){
        super(name, age);
        this.color = color;
    }
    //overrride methods 
    public override void makeNoise(){
        System.debug('Cat will yell: Meow!');
    }
    public override String getInfo(String food){
        return ('Cat name ' + this.name + ' eats '+ food);

    }

}