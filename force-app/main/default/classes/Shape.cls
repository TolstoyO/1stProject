
/**
Create a abstract class called Shape
protected instance fields : 
name as String
area as Decimal
constructor 
1 param|arg constructor to set the name
method 
abstract void method calculateArea with no param

Add a non-abstract void method called displayShapeInfo to Shape class
Print :  The Shape is nameOfShapeHere and the area is areaValueHere
 */
public abstract class Shape {
   public String name;
   protected Decimal area; 

   public Shape (String name){
   this.name = name;
}

   public abstract void calculateArea();
   public void displayShapeInfo(){
    System.debug('The Shape is '+ this.name + ' and the area is ' + this.area);
   }
}