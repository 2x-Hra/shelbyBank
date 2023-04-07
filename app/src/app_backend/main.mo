import Debug "mo:base/Debug";


actor DBank{
  var currentValue = 300; //variable
  currentValue := 100;

  let id = 123123123123; //let for constants

  Debug.print(debug_show(currentValue));
}