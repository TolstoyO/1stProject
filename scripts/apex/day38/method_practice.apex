//Opportunity o1 = Utils.getOneOpportunity('Test', true);
//System.debug(o1);

//Opportunity o2 = Utils.getOneOpportunity('Test2', false);
//System.debug(o2);

//List<Opportunity> opps1 = Utils.getManyOpps('Music', 5, true);
//System.debug(opps1);

//List<Opportunity> opps2 = Utils.getManyOpps('Opp under Account', 3, false);
//System.debug(opps2);
//insert opps2;

//create an Account using Utils.insertNewAccount 
//Account newAcc = Utils.insertNewAccount('Galactic Empire');
//and put all ops2 under this account 
// in order to do that we need to set Account field to all opps in the list to newAcc.Id
//for (Opportunity each: opps2 ){
   // each.AccountId = newAcc.Id;
//}
//insert opps2;
//Account acc = Utils.insertAccountWithOpps('Skywalker Inc', 4);
//System.debug(acc);

//Account a1 = AccountController.getAccountByName('Skywalker Inc');
//System.debug(a1);


//List<Account> accLstWithRevenue = AccountController.getAccountWithAnnualRevenue();
//System.debug (accLstWithRevenue);

System.debug('Max revenue is: ' + AccountController.getMaxRevenue());

