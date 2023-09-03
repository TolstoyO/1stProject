public class BankAccount {
    //accountholder, accountNumber, balance

    @testVisible
    private String accountholder;
    @testVisible
    private Integer accountNumber;
    @testVisible// private field is not availble outside class.
    //in order to make  it availble for the test, we can @testVisible annotation 
    private Decimal balance;
    

    public BankAccount(){
    System.debug('Message from BankAccount constructor');

}
    public BankAccount (String accountholder, Integer accountNumber, Decimal balance){
        this.accountholder = accountholder;
        this.accountNumber =  accountNumber;
        this.balance = balance;
    } 
    // create a void method: showDetails 
    //accept alll parameters 
    //print the details of current object 
    // account Holder name XX, Number: YY, Balance: ZZ;

    public void showDetails(){
        System.debug('Account holder name '+ accountholder
                + ', Account Number: '+ accountNumber
                + ', Balance: '+balance);
    }

    //create a method called  getBalance
    //accept no parameter
    //simply return the current balance 

    public Decimal getBalance(){
        //do some very comple check 
        //before doing below return in real life
        return this.balance;
    }

    //create a method called deposit 
    //accept 1 DEcimal parameter
    //increase the balance by the number provided
    public void deposit(Decimal newMoney){
        if (newMoney> 0){
        this.balance += newMoney; 
        }else {
            System.debug('Invalid number!');
        }
    }

    //create a method called withdraw
    //accept 1 decimal parameter
    //decrease the balance

    public void withdraw(Decimal money){
        if (money > this.balance){
            System.debug('Insaficiant Balance');
        }else{
            this.balance-=money;
        }

    }
    //Create a void method called setupAccount 
    //accept 3 parameters for 
    //assign value to 3 instance fields 
    public void setupAccount(String holder, Integer num, Decimal balance){
        this.accountholder = holder;
        this.accountNumber = num;
        this.balance = balance;
    }

    //create a method called changeName
    // accept 1 parameter 
    //reaasigning the name field
    public void changeName(String newName){
        this.accountholder = newName; 
    }
    }
