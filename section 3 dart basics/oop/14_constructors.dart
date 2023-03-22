import 'dart:math';

/**
 * Constructor
 * - Every class has a constructor
 * - Used to "build/create" an object
 * - Is called first with you create an object
 * - Used to initialize attributes
 */
void main(){
  final Car ferrari = Car(color: "red", engine: "v10 hybrid");
  ferrari.whichColor();
  ferrari.whichEngine();
}

class Car{

  //! constructor
  Car({required this.color, required this.engine}){}

  //! attributes
  final String color;
  final String engine;

  //! methods
  void drive(){
    print('User is driving the car');
  }

  void whichColor(){
    print('Color of the user\'s car is: $color');
  }

  void whichEngine(){
    print('Engine of the use\'s car is: $engine');
  }

}
/**
 * Summary:
 *  - Every class has a constructor
 *  - Build/create object
 *  - First method that is called
 *  - Initialize attributes
 */