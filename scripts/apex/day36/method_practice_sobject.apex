/*Contact c1 = Utils.getContact('Snow');
System.debug(c1);
insert c1;

List<Contact> myContacts = Utils.getContacts('Snow', 10);
System.debug (myContacts);

Account newAcc = Utils.insertNewAccount('');
System.debug(newAcc);*/
//EmailManager.sendMail('olesya.tolstoy@gmail.com', 'Email from Apex', 'Body from Apex');
Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 5);
System.debug(myAcc);
//get all the child contacts that belong to above account here
//List<Contact> childContact = [SELECT LastName FROM Contact WHERE AccountId = :myAcc.ID];
//System.debug(childContact);

Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
                FROM Account 
                WHERE Name = 'Acc with Contact'
                LIMIT 1];
System.debug(acc.Name);
System.debug(acc.Contacts);
List<Contact> accChildContacts = acc.contacts;
for (Contact each: accChildContacts){
    System.debug(each.LastName);
}