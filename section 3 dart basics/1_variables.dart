//initialize, declare, and assign variables.
//Variables can be thought of as containers.
/**
 * A variable always contain the following:
 *  - data type
 *  - identifier
 */

void main() {
  
  int outputInt = 2;

  print('output int: $outputInt');

  late int lateOutputInt;

  lateOutputInt = 0; //now allocated.

  print('late output int: $lateOutputInt'); // will throw an error, asking developer that variable needs to have a value.

}

/**
 * A variable is a data container
 *  - needs a data type and identifier -> int number = 42;
 * 
 * Data type integer
 * 
 * Terms: 
 * - initialize -> int number = 42;
 * - declare -> int number;
 * - assignment -> number = 42;
 */