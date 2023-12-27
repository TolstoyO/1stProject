import { getFieldValue, getRecord } from "lightning/uiRecordApi";
import { LightningElement, wire } from "lwc";

import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CLOSE_DATE_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import USER_ID from '@salesforce/user/Id';
import USERNAME_FIELD from '@salesforce/schema/User.Name';
import EMAIL_FIELD from '@salesforce/schema/User.Email';


const FIELDS = [NAME_FIELD, STAGE_FIELD, CLOSE_DATE_FIELD];
export default class Practice26 extends LightningElement {
    
    userId = USER_ID;

    @wire(getRecord, {recordId: '$userId', fields: [USERNAME_FIELD, EMAIL_FIELD]})
    currentUser;

    get username(){
        return getFieldValue(this.currentUser.data, USERNAME_FIELD);
    }

    get userEmail(){
        return getFieldValue(this.currentUser.data, EMAIL_FIELD);
    }


    recordId = '006Dn00000EjyeIIAR'; //use your own recordID

    //according to above recordId get the entire opp record and wire into below property
    //create data, update data, also known as wire adaptor 
    //basically it saves you from writing apex methods for common operations like this
    //one common js method is getREcord (recordId, fields you want in array )
    //and we need to use @wire to write that into property or function 
    @wire(getRecord, {recordId : '$recordId' , fields: FIELDS }  )
    opp; 


    //easier way to get the field value out of the wired result from getRecord method is 
    //using the getFieldValue method from LWC by providing the wired result and the field name you want
    get nameValue(){
        return getFieldValue(this.opp.data, NAME_FIELD);
    }

    get stageNameValue(){
        return getFieldValue(this.opp.data, STAGE_FIELD);
    }

    //create a getter to get string version of opp property above 
    //get oppInString(){
//return JSON.stringify(this.opp, null, 2);
    //}
}

