public class Person {
    //NAme, Age, Height /instance fields or variable 
    
    public String name;
    public Integer age;
    public Decimal height;
    
// create a void method called print name 
// it shhould simple print message 
//printing the person name 
public void printName(){
    System.debug ('print the person name ' + name);
}

// create a void method called printAge 
//(age of the person is : XX);
public void printAge(){
    System.debug( 'Age of the person is : '+ age);
}

//Create a void method called describePerson 
public void describePerson(){
    System.debug(name + ' is '+ age + ' and Height is ' + height);
}

//Create a void method called changeNAme 
//it should accept one external data as text 
//(it should be simply chnage the name field of
// current object calling the method to new name)
public void changeName(String newName){

name = newName;
}

public void setAgeAndHeight (Integer newAge, Decimal newHeight){
    this.age = newAge;
    this.height = newHeight;
}

public void setPersonInfo(String name,Integer age,  Decimal height ){
    this.name = name;
    this.age = age;
    this.height = height;
    System.debug(name + ' is '+ age+ ' and height is '+ height);
}
// create a method called getAllCapName
//this method should make the name of the current object uppercase 
// and return it to the caller 
 public String getAllCapName(){
    String upName  = this.name.toUpperCase();
    // to return keyword is used 
    // to return the value to the caller of thi method 
    return upName;
 }

 // Create a method called isEligibleForVote
  // expect no external data 
  // return true the age of current Person object 
  // is 18 or above , otherwise return false 
  public Boolean isEligibleForVote(){

    if( this.age >= 18 ){
        return true; 
    }else {
        return false; 
    }
    // return this.age >= 18 ; 

  }
// create a method called getAgeGroup 
//it does not have any mehtod parameter 
// it return age group based on below criteria 
//0-6 young kids 
//7-12 young kids
//13-18 teenager 
//18+ Adult 
// <0 and >120 invalid

public String getAgeGroup(){

    if(this.age<0 || this.age> 120){
       return 'Invalid';
    }else if (this.age>=0 && this.age<6) {
       return 'Little Kid';
    }else if (this.age>=6 && this.age<12) {
      return 'Young Kid';
    }else if (this.age>=12 && this.age<18) {
      return 'teenager';
    }else{
      return 'Adult';
    }
}
 // create a method called IsHigherThan
 //it accept 1 external data (argument) as Decimal 
 // return true if height of current person object is higher 
 // than this number, otherwise false 
 public Boolean IsHigherThan(Decimal otherHeight)
 {
 //this is already boolean result 
return this.height >  otherHeight; 
}
}