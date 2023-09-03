//clean up all the opoertunity records created today
delete [SELECT Id from Opportunity Where CreatedDate = TODAY];