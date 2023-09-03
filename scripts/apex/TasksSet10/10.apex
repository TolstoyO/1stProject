/**10. Create an Account variable with name tragetAccount2 and assign value with below fields 
   - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
   - insert it into Salesforce
   - update below fields and reflect the changes in Salesforce
      - ShippingCountry     has same value as BillingCountry
      - ShippingState       has same value as BillingState
      - ShippingCity        has same value as BillingCity
      - ShippingPostalCode  has same value as BillingPostalCode*/

       Account tragetAccount2 = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    tragetAccount2.Name              = 'Salesforce Tower2';
    tragetAccount2.BillingState      = 'California';
    tragetAccount2.BillingCity       = 'San Francisco';
    tragetAccount2.BillingCountry    = 'US';
    tragetAccount2.BillingPostalCode = '11111';
//    - insert it into Salesforce
    insert tragetAccount2 ; 
    System.debug('tragetAccount2 value is : ' + tragetAccount2); 

    //update below fields and reflect the changes in Salesforce
      //- ShippingCountry     has same value as BillingCountry
      tragetAccount2.ShippingCountry = tragetAccount2.BillingCountry;
     //- ShippingState       has same value as BillingState
     tragetAccount2.ShippingState = tragetAccount2.BillingState;
    //- ShippingCity        has same value as BillingCity
    tragetAccount2.ShippingCity = tragetAccount2.BillingCity;
     // - ShippingPostalCode  has same value as BillingPostalCode*/
     tragetAccount2.BillingPostalCode = tragetAccount2.BillingPostalCode;

     update tragetAccount2;