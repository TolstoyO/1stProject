import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class Practice23 extends LightningElement {

    objectApiName = ACCOUNT_OBJECT;

    recordId = '001Dn00000sRsKfIAK';

    handleSuccess(event) {
        
        // we can access the detail of newly created record using event.details
        console.log(event.detail);
        // accessing newly created record Id
        console.log(event.detail.id);
        // accessing the newly created record fields in this syntax
        console.log(event.detail.fields.AnnualRevenue.value);
        
        const showToastEvent = new ShowToastEvent({
            title: 'Successfully Created',
            message: 'You have created account successfully ' + event.detail.id,
            variant: 'success'
        }); 

        this.dispatchEvent(showToastEvent);
}
}