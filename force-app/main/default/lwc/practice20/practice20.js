import { LightningElement, wire } from "lwc";
import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
export default class Practice20 extends LightningElement {
	highestOppAmount;
	error;


	@wire(getMaxOppAmount)
    wiringIntoThisMethodParam({ data, error} ) { // destruct the wired result into 2 variables data, error
        
        console.log(data); 

        if (data) {
            this.highestOppAmount = data; 
            this.error = undefined; 
        } else if (error) {
            this.error = error; 
            this.highestOppAmount = undefined; 
        }

    }
	/**@wire(getMaxOppAmount)
	wiringUsingMethod(result){
      if (result.data){
		this.highestOppAmount = result.data;
		this.error = undefined;
	  }else if (result.error){
		this.error = this.error;
		this.highestOppAmount = undefined;
	  }
	}
	
	@wire(getMaxOppAmount)
	highestOppAmount;

	get highestOppAmountInstr(){
		return JSON.stringify(this.highestOppAmount, null, 2);
	}*/
}