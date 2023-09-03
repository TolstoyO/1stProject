BankAccount b1 = new BankAccount();
b1.accountholder = 'Olesya';
b1.accountNumber = 247242207;
b1.balance = 30000000;

b1.showDetails();
System.debug(b1.getBalance());

b1.deposit(6000);
System.debug(b1.getBalance());

b1.withdraw(6000000);
System.debug(b1.getBalance());

System.debug('___________________________________');



BankAccount b2 = new BankAccount(); 
b2.setupAccount('Christina',987654321, 1000000); 
b2.showDetails(); 
//Account Holder name: Christina, Number : 987654321, Balance : 1000000
b2.deposit(1000000) ; 

System.debug('b2.getBalance() value is : ' 
            + b2.getBalance());
b2.deposit(-200);  //INVALID NUMBER!!!!
b2.withdraw(500000) ; 
System.debug('b2.getBalance() value is : ' 
            + b2.getBalance());
//b2.getBalance() value is : 1500000
b2.withdraw(3000000) ; 
// CAN NOT WITHDRAW THE MONEY YOU DONT HAVE 

b2.changeName('Christina 2.2');
b2.showDetails();