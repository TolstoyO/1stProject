public class Helper {
    

    // create static void method that print 1 to N
    public static void printOneToN(Integer n){

        for(Integer i= 1; i<= n ;i++) {
            System.debug('i value is : ' + i);
            
        }

    }

    // create static method 
    // that get the sum of the numbers from 1 to N
    public static Integer sumOfOneToN(Integer n){

        Integer sum = 0 ; 

        for(Integer i= 1; i<= n ;i++) {
            sum += i ;     
        }

        return sum ; 
    }


    // create a method called getOneToNList
    // It should return List of Integer with 1 to N as per item
    public static List<Integer> getOneToNList(Integer n){

        List<Integer> numLst = new  List<Integer>(); 

        for(Integer i= 1; i<= n ;i++) {
            numLst.add(i); 
        }

        return numLst ; 

    }

/**
write a method called getHighestNumber
@param List<Integer>
@return Highest number
 */
public static Integer getHighestNumber (List <Integer> lst ){
    Integer max= lst[0];
for (Integer each: lst){
    if (each>max){
        max= each;
    }
}
return max;
}

public static Integer getTotal (List <Integer> numList){
    Integer sum = 0;
    for (Integer each: numList){
        sum += each;
    }
    return sum;
}

public static Integer getAverage (List <Integer> numList){
    //Integer sum = getTotal(numList);
    //return sum/numList.size();
    return getTotal(numList)/numList.size();
}

public static List<String> getLongerName (List<String> strList){
    List<String> filteredList = new List< String> ();
for(String each: strList){
    if (each.length()>5){
        filteredList.add(each);
    }
    
}
return filteredList;
}
}