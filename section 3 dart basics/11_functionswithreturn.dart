/**
 * What is a return value?
 *  - A value that the method returns to the caller.
 *    - example, return the result of a calculation.
 */
void main(){
  print('start');

  int number1 = 4;
  int number2 = 5;
  int result = addNumbers(number1: number1, number2: number2);
  
  print(result);
  print(addNumbers(number1: result, number2: number2));

  print('end');

}

//required keyword means the code will not compile until the developer provides an argument.
int addNumbers({required int number1, required int number2}) => number1 + number2;

/**
 * Summary
 * - A value that the method returns to the caller
 * - You need to define the data type that a method will return
 * - To give back a value you use the keyword return
 * - Named parameters are written in brackets {} which improves the usage and readability of your code.
 * - Parameters that are needed for a method can be markes as required
 */
