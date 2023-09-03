/**
Given a String with a sentence with one or more words 
MAke each title case: First letter uppercase, the  rest lowercse 
for example: apex IS gReat ==> Apex Is Great
 */

String name = 'apex IS    gReat';

//First normalize the space so we don't have extra spaces other than needed 
//name = name.normalizeSpace(); 
//.debug(name); 


//get a list of each words => split by space
List<String> wordList = name.normalizeSpace().split(' ');
System.debug(wordList);
for (Integer i=0; i< wordList.size(); i++){
    //update each word to TitleCase by item = item.tolowercase().capitalize()
    wordList[i] = wordList[i].toLowerCase().capitalize();
}
System.debug(wordList);
name = String.join(wordList, ' ');
System.debug(name);