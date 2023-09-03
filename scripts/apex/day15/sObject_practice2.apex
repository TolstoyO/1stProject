//CReate an OPPORTUNITY var and assign its value 
// fill up bellow fields
// Name ,  StageName, CloseDate
Opportunity o1 = new Opportunity(); 
o1.Name = 'Opp from Apex' ; 
o1.StageName = 'Closed Won'; 
o1.CloseDate = Date.today() ; 

System.debug(' opportunity value is : '+ o1);

Opportunity o2 = new Opportunity(); 
o2.Name = 'Opp from Apex' ; 
o2.StageName = 'Closed Won'; 
o2.CloseDate = Date.today() ; 

List<Opportunity> oppss = new List<Opportunity>{o1,o2};
System.debug(' the list with opportunities 1 and 2:  '+ oppss);

//insert these Oppss into Saleasforce
insert oppss;