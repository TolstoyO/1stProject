public  class RecursionDemo {
   //count from 1 to N in thid method 
   //and print it out 
   public static void  printNumber (Integer n){
   
        System.debug('i value is: '+n);

        if (n>0){
        printNumber(n-1);
    }
   }
}
