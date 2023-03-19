/**
 * Attributes
 *  - Describes a class
 *  - An attribute differs from variables by visibility modifiers
 *  - Security modifiers regulate the access authorization to the respective attribute from the outside
 *  - To access attributes cleanly, you use getters and setters.
 */
void main() {
  
  Car volvo = new Car();
  volvo.setCarColor = 'blue';

  volvo.driveCar();

  volvo.parkCar();

  Car honda = new Car();
  honda.setCarColor = 'red';

  honda.driveCar();

  honda.parkCar();

  String colorFromCar1 = volvo.color;
  String colorFromCar2 = honda.color;

  print('Volvo color: $colorFromCar1');

  print('Honda color: $colorFromCar2');

}

class Car{
  //! Attributes
  late String _carColor; // underscore (_) denotes that this is a private variable.
  
  //!Setter
  set setCarColor(String carColor) => this._carColor = carColor; //on setter methods, you can validate the input.

  //!Getter
  String get color => this._carColor;

  //! Methods
  void printCarColor(){
    print('Color of the car: $_carColor');
  }

  void driveCar(){
    print('User is currently driving the car');
  }

  void parkCar(){
    print('User is currently parking the car');
  }

}
/**
 * Summary: 
 *  - Security modifiers regulate the access authorization to the respective attribute from the outsid .
 *  - To access attributes cleanly, use getters and setters.
 */