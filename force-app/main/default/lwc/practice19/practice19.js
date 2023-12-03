import Jigsaw from "@salesforce/schema/Account.Jigsaw";
import { LightningElement } from "lwc";
export default class Practice19 extends LightningElement {
	person={
        firstName: 'Ahmed',
        lastName: 'P',
        age: 48
    }

    get prettyPerson(){
        return JSON.stringify(this.person, null, 2);
    }
}