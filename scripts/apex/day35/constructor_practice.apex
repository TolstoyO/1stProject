

Order o1 = new Order ('cofee', 'Duaa', 3.99);
o1.printOrder();

Order o2 = new Order ('tea', 'Natalia', 4.99);
o2.printOrder();


Order.taxRate = 0.3;
//System.debug('Order taxrate: '+ Order.TaxRate);
Order.showTaxRate();

Order.taxRate = 0.4;
Order.showTaxRate();
o1.printOrder();
o2.printOrder();