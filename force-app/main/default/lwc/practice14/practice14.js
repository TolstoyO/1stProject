import { LightningElement, api } from "lwc";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class Practice14 extends LightningElement {
	
    showSpinner = false;

    handleClick (){
        //set the value of showSpinner to true 
        this.showSpinner = true;
        setTimeout(() => {
            this.showSpinner = false;
        }, 3000);
    }

    handleShowSuccessToast(){
      const event = new ShowToastEvent({
      title: "Awesome Success Title",
      message: "Your are awesome actions had succeed! Hired",
      variant: "success"
  });
      this.dispatchEvent(event);
    }

    handleShowErrorToast(){
        const event = new ShowToastEvent({
            title: "Awesome Error Title",
            message: "Your are awesome actions have failed! Try Again",
            variant: "error"
        });
            this.dispatchEvent(event);
    }
}