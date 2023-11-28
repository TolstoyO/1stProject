import { LightningElement } from 'lwc';

export default class Practice8 extends LightningElement {
    hired = false;
    graduated = true;
    promoted = false;

    handleHireChange(event){
        
    this.hired = event.target.checked;
    this.promoted = this.hired && this.graduated;
    }

    handleGraduatedChange(event){

        this.graduated = event.target.checked;
        this.promoted = this.hired && this.graduated;
    }

 
}