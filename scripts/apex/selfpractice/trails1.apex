/**List<String> colors = new List<String> { 'red', 'green', 'blue' };
List<String> moreColors = new List<String>();
moreColors.add('orange');
moreColors.add('purple');
// Get elements from a list
String color1 = moreColors.get(0);
String color2 = moreColors[0];
System.assertEquals(color1, color2);
// Iterate over a list to read elements
for(Integer i=0;i<colors.size();i++) {
    // Write value to the debug log
    System.debug(colors[i]);
}
*/
integer x;
Boolean isOK; 
String theString = 'Hello';
if (isOK== false && theString =='Hello'){
    x=1;
    } if (isOK == true && theString =='Hello'){
    x=2;
} else if (isOK != null && theString =='Hello'){
    x=3;
} else {
    x=4;
}
System.debug(x);



