public abstract class Animal {
  //instance fields
    public String name;
    public Integer age;

    //constructor
    public Animal(String name, Integer age){
        this.name = name;
        this.age = age; 
    }
    //abstract method

public abstract void makeNoise();
//abstract method called getInfo()
//it has param as food return String 
public abstract String getInfo(String food);
}