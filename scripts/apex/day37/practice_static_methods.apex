//Lead ld1 = Utils.getLead('Moroz', 'Zima LLC', true);
//System.debug(ld1);

//Lead ld2 = Utils.getLead('Stark', 'Kinorai SPC', false);
//System.debug(ld2);

//List<Lead> myLeads1= Utils.getLeads('Konorejko', 'Ptici', true, 4);
//System.debug(myLeads1);

//List<Lead> myLeads2= Utils.getLeads('kykyky', 'Pitik', false, 4);
//System.debug(myLeads2);
 

 //LeadTriggerHandler.handleBeforeInsert(myLeads2);
 //System.debug(myLeads2);

 List<Lead> myLeads3 = new List<Lead>();
myLeads3.add(new Lead(FirstName = 'clark', LastName = 'Kent', Company = 'Kukuruka'));
myLeads3.add(new Lead(FirstName = 'alex', LastName = 'vasilenko', Company = 'Banya'));
myLeads3.add(new Lead(FirstName = 'valentina', LastName = 'ilkevich', Company = 'Kolobok'));

//System.debug(myLeads3);
//LeadTriggerHandler.handleBeforeInsert(myLeads3); 
//System.debug(myLeads3);
insert myLeads3;
