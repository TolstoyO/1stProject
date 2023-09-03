/** Q6- Write a program that can return the sum of odd numbers between 1 to 100 */
integer sum = 0;
for (integer num = 1; num<100; num+=2){
    sum+=num;
}
system.debug(sum);

//Write a program that can return the sum of odd numbers between 1 to 100 */

integer sum1 = 0;
for (integer num = 0; num<100; num+=2){
    sum+=num;
}
system.debug(sum);



//output should be Tuesday

integer day = 3;

String result= (day==1)? 'Sunday' : (day==2)? 'Monday' :
(day==3)? 'Tuesday' : (day==4)? 'Wednesday' : (day==5)? 'Thursday' : 
(day==6)? 'Friday' : 'Saturday';

System.debug(day+'.day of the week is '+result);