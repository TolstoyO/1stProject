integer a = 0;
if (a>=0){
    system.debug('good');
}if (a<=0){
    system.debug('bad');
}

system.debug('*********************');

string s = 'Apex';
if (s.contains('p')){
    system.debug('good');
}else if (s.length()==4){
    system.debug('bad');
}

system.debug('*********************');

decimal milkPrice = 7.99;
Decimal tomatoPrice  = 4.99;
decimal breadPrice = 2.99;
Decimal totalPrice = milkPrice+tomatoPrice+breadPrice;
system.debug('Total price for your purchase is: ' +totalPrice);

system.debug('*********************');

integer principal = 250000, rate = 4, numberOfYears = 20;
integer simpleInterest

