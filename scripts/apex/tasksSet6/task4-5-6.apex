/**
4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman',
 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

- Find the count of times 'Iron Man' showed up  */
List<String> heroList = new List<String>{
  'Superman',
  'Batman',
  'Spiderman',
  'Iron Man',
  'Wonder Woman',
  'Captain America',
  'Iron Man',
  'Iron Man',
  'Green Lantern',
  'Batman'
};
integer count = 0;
for (String eachHero : heroList) {
  if (eachHero == 'Iron Man') {
    count++;
  }
}
System.debug('We found ' + count + ' dulicates of Iron Man');

//5. Continue from above List of 10 String with some duplicates values
//Print out all indexes of 'Iron Man' in the list
for (Integer i = 0; i < heroList.size(); i++) {
  if (heroList[i] == 'Iron Man')
    System.debug('Index of Iron Man is : ' + i);
}

//Create another List of Integer and Store the all indexes into new List when looping
List<Integer> newHeroList = new List<Integer>();
for (Integer i = 0; i < heroList.size(); i++) {
  if (heroList[i] == 'Iron Man') {
    newHeroList.add(i);
  }
}
system.debug('indexes in a newHeroList are: ' + newHeroList);
//- print out the size of new List
system.debug('The size of newHeroList is: ' + newHeroList.size());

//6. Write a while loop to check the list contains 'Iron Man' 
//if so find index of each Iron Man and remove from the list 

while(heroList.contains('Iron Man')){
  heroList.remove(heroList.indexOf('Iron Man'));
} 
System.debug(heroList);






