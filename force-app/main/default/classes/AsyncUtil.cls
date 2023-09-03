public class AsyncUtil {
    /**
    created a static void method called boilWater
    symple print boiling water 
    add @future annotation on top of the method 
      */

      /**
      @future will make a method as futurre method which is always static void methhod 
      it can have parameters, the type can not be sObject 
      it can be any primitive type (String, Integer, Double and so on )
      it can also be List of those types */
    @future
      public static void boilWater(){
        System.debug ('boiling water...');

      }
}
