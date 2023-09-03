public class OOP_Practice {
  
   // create a static method called printShape 
   //accept a aprameter as Shape 
   // return nothing 
   //it will calculateArea method of the Shape 
   //andsimply print the object itself 
   public static void printShape (Shape s ){
    s.calculateArea();
    System.debug(s);

   }
   // create a method called getShape
   //return  Shape 
   //accept one PAram String shapeName
   //if no valid shape provided Circle created with default constructor 
   public static Shape getShape (String ShapeName){
    Shape s; 
    switch on ShapeName {
    when 'Circle'{
        s = new Circle ('Cool circle', 4);
    }
    when 'Rectangle'{
        s = new Rectangle ('Book', 4,7);
    }
    when 'Square' {
        s = new Square ('Box', 4);
    }
    when else {
        s = new Circle ();
    }
   }
   return s;
}
}