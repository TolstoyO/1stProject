/**
winter - boots
spring - sneakers 
summer - sandals 
fall - loafers */

String season = 'winter';
switch on season  {
    when 'winter'{
        system.debug('Wear your boots, it is ' + season + ' time');
    }
    when 'spring'{
        system.debug('Wear your sneakers, it is ' + season + ' time');
    }
    when 'summer'{
        system.debug('Wear your sandals, it is ' + season + ' time');
    }
    when 'fall'{
        system.debug('Wear your Loafers, it is ' + season + ' time');
    }
}

system.debug('***************************************************');

List <Integer> myList = new List <Integer> ();
myList.add(45);
myList.add(30);
myList.add(50);
myList.add(30);
myList.add(48);
system.debug(myList);

system.debug(myList.get(0));

myList.set(0,15);
System.debug(myList);

myList.clear();
system.debug(myList);

system.debug('***************************************************');

List <String> cars = new List <String> {
    'Toyota', 
    'BMW',
    'Lexus',
    'Subaru',
    'Hunday'
};
system.debug(cars);

cars.add('Honda');
cars.add('Mercedes');
cars.add(1,'Tesla');
system.debug(cars);

boolean isHonda =cars.contains('Honda');
system.debug(isHonda);

system.debug(cars.get(2));
