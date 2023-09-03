Person p3 = new Person();
p3.setPersonInfo('Kuzya', 22, 198.0);
p3.describePerson();
p3.changeName('Kozel');
p3.printName();
p3.setAgeAndHeight(33, 233.2);
p3.printAge();
p3.describePerson();

//String str = 'hello';
//String strUppercase = str.toUpperCase();
//System.debug(strUppercase);

Boolean isAdult =  p3.isEligibleForVote(); 
System.debug('isAdult value is : ' + isAdult); 
//isAdult value is : true
p3.setAgeAndHeight(33, 180) ; 

System.debug('p3.isEligibleForVote value is : ' 
                        + p3.isEligibleForVote() );
// p3.isEligibleForVote value is : false

System.debug('p3.getAgeGroup() value is : ' 
                        + p3.getAgeGroup() );
//p3.getAgeGroup() value is : teenager

Boolean isHigher = p3.IsHigherThan(200.0);
System.debug('P3. is higher than 200? '+ isHigher);
System.debug(p3.IsHigherThan(160)); 