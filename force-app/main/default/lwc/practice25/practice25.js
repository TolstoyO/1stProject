import { LightningElement, api } from "lwc";

import USER_ID from '@salesforce/user/Id';
import USER_OBJECT from '@salesforce/schema/User';
import NAME_FIELD from '@salesforce/schema/User.Name';
import USER_NAME_FILED from '@salesforce/schema/User.Username';
import EMAIL_FIELD from '@salesforce/schema/User.Email';
import ACTIVE_FIELD from '@salesforce/schema/User.IsActive';

export default class Practice25 extends LightningElement {
	@api recordId = USER_ID;
	@api objectApiName = USER_OBJECT ;

    fields = [NAME_FIELD, USER_NAME_FILED, EMAIL_FIELD, ACTIVE_FIELD ]


}