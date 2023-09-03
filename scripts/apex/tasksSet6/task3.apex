 /*Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4*/

List <String> names = new List <String>{
    'Olesya Tolstoy',
    'Phillip Tolstoy',
    'Iliya Tolstoy',
    'Valentina Ilkevich',
    'ALex Vasilenko'
};

if (!names.contains('Jon Snow')) {
  names.add(4, 'Jon Snow');
} 
if (names.contains('Jon Snow')){
  names.remove(names.indexOf('Jon Snow'));
  names.add(4, 'Jon Snow2');
}

System.debug('Names value is : ' + names);