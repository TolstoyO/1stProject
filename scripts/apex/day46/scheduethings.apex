Schedulable s = new ScheduledTaskCleanUp();
//crone expresssion is used to define time intervals programaticly 
String crex = '0 6 12 ? 4  FRI';
System.schedule('Task job', crex, s);