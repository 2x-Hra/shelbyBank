import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

// private functions define as : func name (){};
// to get casnister ID for backend : dfx cansister id app_backend
actor DBank{
  var currentValue = 300; //variable
  currentValue := 100;

  let id = 123123123123; //let keyword for constants

  Debug.print(debug_show(currentValue));

  public func topUp( amount: Nat){ 
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  
}