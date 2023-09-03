 @isTest
private class BankAccountTest {
  
    @isTest
    static void testGetBalance (){
    //arrange
    BankAccount b1 = new BankAccount ('Sean', 123456789, 8000000);
    Decimal expected = 8000000;
    //act
    Decimal actual = b1.getBalance();
    //assert 
    Assert.areEqual(8000000, b1.balance);

    // calll the no param constructor and show details method for 
    BankAccount b2 = new BankAccount();
    b2.showDetails();
}
   @isTest
   static void testDeposit(){
    
    //arrange
    BankAccount b1 = new BankAccount ('Sean', 123456789, 8000000);

   // act 
   b1.deposit(1000);
   // assert the balance increased by $10000
   Decimal expected = 8001000;
   Decimal actual  = b1.getBalance();  
   //assert
   System.assertEquals(expected, actual);

   }

   @isTest
   static void testWithdraw(){
    
    //arrange
    BankAccount b1 = new BankAccount ('Sean', 123456789, 8000000);
    //act 
    b1.withdraw(1000000);
    //assert withdraw balance 
   Assert.areEqual(700000, b1.balance);
}

  @isTest
   static void testSetUpAccount(){
    //arrange
    BankAccount b1 = new BankAccount ('Sean', 123456789, 8000000);
    //act 
    b1.setupAccount('Test', 123456, 10000);
    //assert account holder is Test, account  number is 123456. balance 10000
    Assert.areEqual('Test', b1.accountholder);
    Assert.areEqual(123456, b1.accountNumber);
    Assert.areEqual(10000, b1.balance);
}

@isTest
static void testChangeName(){
    //arrange
    BankAccount b1 = new BankAccount ('Sean', 123456789, 8000000);
    //act 
    b1.changeName('Kolobok');
    //assert
    Assert.areEqual('Kolobok', b1.accountholder);


    
}
}