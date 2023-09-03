List<Shape> shapeList = new List<Shape>();
shapeList.add( new Rectangle ('Book', 5,6));
shapeList.add(new Rectangle('Screen', 4,3));
shapeList.add(new Square ('Window', 5));
shapeList.add(new Circle('Orange',3));
shapeList.add(new Circle('Planet', 3000));
shapeList.add(new Circle ('Ball', 8));
shapeList.add(new Square('Cub', 4));


for (Shape each: shapeList){
    each.calculateArea();
    each.displayShapeInfo();

    if (each instanceof Circle){
        System.debug('FOUND CIRCLE');
        //casting is called downcasting ==. from parent type to sub type
        Circle c = (Circle) each;
        c.roll();
    }
    Drawable d = (Drawable) each;
    d.draw();
}

