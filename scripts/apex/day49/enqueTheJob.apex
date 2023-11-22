List<Account> myLyst = [SELECT Name, Id, Description
                        FROM Account
                        WHERE Name LIKE 'Cool%'];
System.debug('Running Apex - anon Code');
AccountUpdateAsync q = new AccountUpdateAsync('From queueable job', myLyst);
System.enqueueJob(q);
TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
System.debug(tq);