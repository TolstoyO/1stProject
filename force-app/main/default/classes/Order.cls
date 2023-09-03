public class Order {
    public String product;
    public String customerName;
    public Decimal price; 

    //create a static field tax rate 
    Public static Decimal taxRate;
    
    public Order (String Product, String customerName, Decimal price) {

        this.product = product;
        this.customerName = customerName;
        this.price = price;
    }
    public void printOrder()
    {  System.debug(this);
        //System.debug('tax rate '+ taxRate);
       // System.debug('Order: [customerName = ' + this.customerName+ ', price= '+ this.price+ ', product= '+ this.product+' ]');
    }

    public static void showTaxRate(){
        System.debug('tax rate is '+ taxRate); 
    }
}