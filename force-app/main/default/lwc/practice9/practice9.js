import { LightningElement } from 'lwc';

export default class Practice9 extends LightningElement {

    selectedValue = '';

    get options() {
        return [
            { label: '--None--', value: '' },
            { label: 'California', value: 'CA' },
            { label: 'Maryland', value: 'MD' },
            { label: 'Texas', value: 'TX' },
            { label: 'Illinois', value: 'IL' },
            { label: 'New York', value: 'NY' },
            { label: 'Nevada', value: 'ND' },

        ];
    }

    handleChange(event) {
        this.selectedValue = event.detail.value;
}

    get isCapitalArea(){
        return this.selectedValue=== 'NY'|| this.selectedValue==='IL';
    }
}