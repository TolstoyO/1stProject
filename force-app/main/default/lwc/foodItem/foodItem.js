import { LightningElement, api } from "lwc";
export default class FoodItem extends LightningElement {

   // item={
      //  foodName: 'Pizza',
       // calorie: 2000
  //  }

@api
item;
// handleClick(){
// //handleClick will fire a custom event called bla
// //and parent component can listen to the event and take whatever action it needs to take 
// //create a custom event 

// const myEvent = new CustomEvent('bla');
// //this is now we dispatch a event 
// this.dispatchEvent(myEvent);
// console.log('child dispatched the event called bla');
// }

handleClick(){
    //this is how we get the name of the food item 
    console.log(this.item.foodName);

    //this is how we can create event called bla and send data a long with it by providing second param as object 
    const myEvent = new CustomEvent('bla', {
        detail: this.item.foodName
    });
    this.dispatchEvent(myEvent);
}
}