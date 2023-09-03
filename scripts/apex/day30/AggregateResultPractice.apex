// SELECT Count (Id) FROM Account
AggregateResult result = [SELECT Count(Id), MAX(AnnualRevenue) FROM Account];
System.debug(result);

//get the count value of AggregateREsult
//we have get method that accept the column name and return the value.
System.debug('Count of Account is '+ result.get('expr0')); 
System.debug('Max of Annual Revenue  '+ result.get('expr1')); 

//SELECT Coiunt of Opps and MIN OPPS amount for Alll Opportunities 
// Store the result into a variable and print it out 
// give alias to your aggregate function as CountOFOpps 
AggregateResult oppResult = [ SELECT COUNT (Id) CountOfOpps, MIN (Amount) LowestAmount FROM Opportunity];
System.debug('Count of Opps is ' + oppResult.get('CountOfOpps'));
System.debug('Min Ammount '+ oppResult.get('LowestAmount'));

//If the SOQL query return sigle row, we can store it into one AggregatResult variable 
//When we have multiple rows as a result of GROUP BY 
//Then we can store it in the list of Array
//List<AgregateREsult> or just AgregateREsult[]

AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps
                                    FROM Opportunity
                                    GROUP BY StageName]; 

for (AggregateResult each: allResults){
    System.debug (each.get('StageName') + '-->'+ each.get('CountOfOpps'));
}

System.debug('______________________________________');

//Task: Store the result of below query and print each item out 
//SELECT isClosed, COUNT (Id)
//FROM Opportunity
//GROUP BY IsClosed 


AggregateResult[] newResults = [SELECT isClosed, COUNT (Id)
                                    FROM Opportunity
                                    GROUP BY IsClosed ];

for(AggregateResult each: newResults){
    System.debug(each.get('isClosed') + '-->'+ each.get('expr0'));
}

