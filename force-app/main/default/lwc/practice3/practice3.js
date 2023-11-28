import { LightningElement } from 'lwc';

export default class Practice3 extends LightningElement {

    message = "I received 9 offers";
    inputValue = "";


    handleChange() {
        console.log('User typed something');
    }
    handleChange(event) {
        //console.log('User typed something');
        //console.log(event.target.value);
        //console.log(event.target.label);
        this.message = event.target.value;
        this.inputValue = event.target.value;
    }

    handleReset() {
        this.message = "Offer Received";
        this.inputValue = "";
    }

    handleClear() {
        this.message =" ";
        this.inputValue = "";
    }
}