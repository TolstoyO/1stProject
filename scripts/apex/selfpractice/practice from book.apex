LearningSFDevAPI.Message msg = new LearningSFDevAPI.Message();
msg.body = 'TEST MESSAGE';
msg.sender = 'Olesya Vasilenko';
msg.email = 'olesya_vasilenko@yahoo.com';
msg.location = 'Lincolnshire, IL';
msg.test = true;

LearningSFDevAPI.sendMessage(msg);