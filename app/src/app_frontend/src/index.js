import { app_backend } from "../../declarations/app_backend";

window.addEventListener("load", async function(){
  // console.log('hii');

  const currentAmount = await app_backend.checkBalance();
  this.document.getElementById("value").innerText = Math.round(currentAmount*100) / 100;
});

document.querySelector("form").addEventListener("submit", async function(event){
  event.preventDefault();
  console.log("submited");

  const button = event.target.querySelector("#submit-btn");

  const inputAmount = parseFloat(document.getElementById("input-amount").value);
  const outputAmount = parseFloat(document.getElementById("withdrawal-amount").value);

  button.setAttribute("disabled", true);
  if( document.getElementById("input-amount").value.length != 0){
    await app_backend.topUp(inputAmount);
  }
  
     
  const currentAmount = await app_backend.checkBalance();
  this.document.getElementById("value").innerText = Math.round(currentAmount*100) / 100;

  document.getElementById("input-amount").value = "";
  button.removeAttribute("disabled");
});
