import { app_backend } from "../../declarations/app_backend";

window.addEventListener("load", async function(){
  // console.log('hii');

  const currentAmount = await app_backend.checkBalance();
  
  this.document.getElementById("value").innerText = Math.round(currentAmount*100) / 100;
});

document.querySelector("form").addEventListener("submit", async function(event){
  event.preventDefault();
  console.log("submited");
});
