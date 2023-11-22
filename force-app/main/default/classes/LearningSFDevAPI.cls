public class LearningSFDevAPI {

public static List<Message> getMessages() {
    HttpRequest req = new HttpRequest();
    req.setMethod('GET');
    req.setEndpoint('http://api.learnsfdevwithapex.com/messages');

    Http http = new Http();
    HttpResponse res = http.send(req);
    List <Message> messages = (List<Message>)(JSON.deserialize(res.getBody(), List<Message>.class));
  
    return messages;
   
}
public static void sendMessage(Message msg) {
    HttpRequest req = new HttpRequest();
    req.setMethod('POST');
    //req.setEndpoint('http://api.learnsfdevwithapex.com/messages');
    req.setEndpoint('http://api.learnsfdevwithapex.com/messages'); //This is for the final version at the end of the chapter
    req.setBody(JSON.serialize(msg));
    req.setHeader('X-Auth-Token', 'LearningSFDevAPI');

    Http http = new Http();
    HttpResponse res = http.send(req);
    System.debug(res);

}

public class Message {

    public String id;
    public String body;
    public Date posted; 
    public String sender;
    public String location;
    public String email;
    public Boolean test;

}

}