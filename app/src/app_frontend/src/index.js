import { app_backend } from "../../declarations/app_backend";

window.addEventListener("load", async function(){
  // console.log('hii');

  const currentAmount = await app_backend.checkBalance();
  this.document.getElementById("value").innerText = currentAmount;
});
