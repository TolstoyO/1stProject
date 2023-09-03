boolean iscar = false;
if (iscar = true){
    system.debug('This is not supposed to be.');
}else{
    system.debug('you are right');
}


system.debug('-----------------------------');

/**
Q2-Write a program that can convert Miles to Km
The output should be like ‘10 miles = 16.09 km ’ */
decimal miles = 5;
decimal KM = miles*1.609;
system.debug(miles +' miles are equal '+ KM + ' killometrs');


system.debug('-----------------------------');

/**Q3-Write a program that can display the selected browser
-declare a String variable called browserName
-assume that the valid browsers are: chrome, safari, edge, firefox, opera
-if the browserName does not match with the valid browsers’ names, output should be 
    ‘Invalid browser’

Show three solutions;
1-Use switch
2-Use if
3-Use ternary*/

string browserName = 'chrome';
switch on browserName {
    when 'chrome', 'safari', 'edge', 'firefox', 'opera'{
        system.debug(browserName);
    }
    when else {
        system.debug('invalid browser');
    }
}

if (browserName =='chrome'|| browserName == 'safari' || browserName =='edge'
        || browserName =='firefox' || browserName =='opera'){
    system.debug(browserName);
    } else {
        system.debug('invalid browser');
    }



String result=(browserName=='safari')? browserName : (browserName=='opera')? browserName :
(browserName=='edge')? browserName : (browserName=='firefox')? browserName : (browserName=='chrome')?
browserName : 'Invalid Browser';

System.debug(result);