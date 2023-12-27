import { LightningElement } from "lwc";
export default class Practice29 extends LightningElement {

    showSpinner;
	constructor(){
        super();
        console.log('message from constructor');
        this.showSpinner = true;
    }
	connectedCallback(){
        console.log('message from connectedCallback');
        //wait for 3 seconds here 
        setTimeout(() => {
            console.log('done waiting 3 sec');
            this.showSpinner = false;
        }, 3000);

    }

    renderedCallback(){
        console.log('message from renderedCallback ');
    }
}