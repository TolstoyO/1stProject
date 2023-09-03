Rectangle s1 = new Rectangle();
System.debug(s1);
Rectangle s2 = new Rectangle('Book', 10,8);
s2.calculateArea();
System.debug(s2);
s2.displayShapeInfo();
s2.draw();

System.debug('++++++++++++++++++++++++++++++++++++');
Square s3 = new Square ('Window', 5);
s3.calculateArea();
System.debug(s3);
s3.displayShapeInfo();
s3.draw();

System.debug('++++++++++++++++++++++++++++++++++++');
Circle s4 = new Circle('Soccer', 5);
System.debug(s4);
s4.displayShapeInfo();
s4.calculateArea();
s4.draw();
s4.roll();




