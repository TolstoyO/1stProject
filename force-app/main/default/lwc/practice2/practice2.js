import { LightningElement } from 'lwc';

export default class Practice2 extends LightningElement {
    firstName = "John";
    lastName = "Snow";

    get fullName(){
        return `${this.firstName} ${this.lastName}`;
    }
    // add a function method 
    handleClick(){
        console.log('Button is Clicked');
        this.firstName = "Kat";
        this.lastName = "Kukla";
    }
}