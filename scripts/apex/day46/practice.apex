Square s = new Square ('Box', 10);
s.calculateArea();
System.debug(s);

//downcast th variable s Datetype to Square
Square sq = (Square) s;

AggregateResult result = [SELECT Count(Id) total FROM Account];
Integer count = (Integer) result.get('total');
System.debug(count); 