/**
 * What is object-oriented programming
 * - A progamming style.
 * - Adapted the human thinking
 * Objects:
 *  - Writable
 *  - Can work together
 *  - Using to solve propblems
 * 
 * Example: Car object
 * - It has wheels (property: list)
 * - It has doors (property: list)
 * - It has color (property: string)
 * - Can be opened / closed (property: boolean)
 * - Can drive (method)
 * - Can honk (method)
 * 
 * Example: human object
 * - Name (property: string)
 * - Age (property: int)
 * - Eye color (property: string)
 * - Can move (method)
 * 
 * Classes
 * - Blueprint for objects
 *    - Contains: Properties and methods
 * - From one blueprint / class, you can create any number of objects that can have different values for properties.
 * 
 * Flow:
 *  Add properties 1st
 *  Add methods 2nd.
 */
void main() {

  Car volvo = new Car();
  volvo.color = "blue";

  volvo.printColorOfTheCar();
  volvo.drive();
  volvo.park();

  Car honda = new Car();
  honda.color = "red";

  honda.printColorOfTheCar();
  honda.drive();
  honda.park();
}

class Car{
  //! Attributes can be added here.
  late String color;

  //! Methods can be added here.
  void printColorOfTheCar(){
    print('Color of the car: $color');
  }

  void drive(){
    print('car is driving');
  }

  void park(){
    print('car is parked');
  }
}
/**
 * Summary: 
 *  - Object-oriented programming (OOP) is a programming style adapted to the human thinking
 *  - Objects are describable things that can work together to solve problems.
 *  - Classes are blueprints for objects
 *    - Specify what properties and methods an object should have
 *  - From one blueprint / class you can any number of objects that can have different values for properties.
 */