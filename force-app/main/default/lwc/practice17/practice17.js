import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";
export default class Practice17 extends LightningElement {
	accounts;
    error;

  /**  @wire(getAccountWithAnnualRevenue)
    getDataFRomApex(result){
 if (result.data){
    this.accounts= result.data;
    this.error = undefined;
 } else if (result.error){
    this.error = result.error;
    this.data= undefined; 
 }
    }*/ 

    /**
     * let result ={
     * data:"some data goes here",
     *error: some data goes here" }
     use destructing to save data and error values into2 variables
     let {data, error} = result;
     */

     @wire(getAccountWithAnnualRevenue) 
     getDataFromApex( {data , error} ) {  // destructing the result we got from apex into data and error variable using destructing syntax 
         
         if (data) {
             this.accounts = data; 
             this.error = undefined; 
         } else if (error) {
             this.error = error; 
             this.data = undefined; 
         }
     }
    }

