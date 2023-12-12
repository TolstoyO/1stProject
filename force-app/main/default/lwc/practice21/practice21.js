import { LightningElement} from "lwc";
import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
export default class Practice21 extends LightningElement {
	highestOppAmount = 0;
    account = {};
    handleClick(){
        console.log('button clicked');
        getMaxOppAmount().then(result=> {
            console.log(result);
            this.highestOppAmount = result;
        })
    }

    handleGetAccount(){
        getAccountByName({accName: 'GenePoint'}).then(result=>{
            console.log(result);
            this.account = result;
        })


}
}