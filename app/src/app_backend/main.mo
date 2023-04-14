import Debug "mo:base/Debug";

// private functions define as : func name (){};
// to get casnister ID for backend : dfx cansister id app_backend
actor DBank{
  var currentValue = 300; //variable
  currentValue := 100;

  let id = 123123123123; //let keyword for constants

  Debug.print(debug_show(currentValue));

  public func topUp(){ 
    currentValue += 1;
    Debug.print(debug_show(currentValue));
  };

  
}