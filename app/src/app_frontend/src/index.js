import { app_backend } from "../../declarations/app_backend";

window.addEventListener("load", function(){
  // console.log('hii');

  const currentAmount = app_backend.checkBalance();
  this.document.getElementById("value").innerText = currentAmount;
});
