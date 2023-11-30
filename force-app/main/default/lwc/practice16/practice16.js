import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";


export default class Practice16 extends LightningElement {

    /**
    @wire decorator is used to get salesforce data, also called wire adaptor
     below line will call the apex method getAccountWithAnnualRevenue
     get the result -> turn it into json with certain structure
     and assign it to the property(or function) right under ->
     it will have this structure 
    {
        data : [the data queried] , 
        error : undefined
    }
    */
    @wire(getAccountWithAnnualRevenue)
    wiredAccounts; 

	

}