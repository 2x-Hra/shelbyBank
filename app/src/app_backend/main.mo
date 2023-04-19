import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";
// private functions define as : func name (){};
// to get casnister ID for backend : dfx cansister id app_backend
actor DBank{
  stable var currentValue = 300; //variable
  currentValue := 100;

  let id = 123123123123; //let keyword for constants


  public func topUp( amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdrawl( amount : Float){
    let tempValue: Float = currentValue - amount;
    if(tempValue >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue))
    }else{
      Debug.print("Amount too large, current Value less than zero");
    }
    
  };
 
  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound(){
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }
}