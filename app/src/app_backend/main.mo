import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

// private functions define as : func name (){};
// to get casnister ID for backend : dfx cansister id app_backend
actor DBank{
  var currentValue = 300; //variable
  currentValue := 100;

  let id = 123123123123; //let keyword for constants


  public func topUp( amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdrawl( amount : Nat){
    let tempValue: Int = currentValue - amount;
    if(tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue))
    }else{
      Debug.print("Amount too large, current Value less than zero");
    }
    
  };
 
  public query func checkBalance(): async Nat{
    
  };
}