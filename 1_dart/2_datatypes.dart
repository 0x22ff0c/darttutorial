/**
 * Why data types?
 *  - Computer should always know exactly with which values it works
 *  - internally, different processes are executed for different data types
 *  - readability and understandability
 * 
 * primitve data types:
 *  - boolean (true / false)
 *  - integer (0)
 *  - double (1.0)
 *  - char ('2')
 * 
 * complex data types:
 *  - String (sample)
 *  - List ([1,2,3])
 *  - Map ({'key' : 'value'})
 * 
 * keywords:
 *  - written before variables to give them specific behavior
 * 
 * final -> after first initialization not changeable in this lifecycle
 * const -> set while compiling, not changeable.
 * var -> type is assigned automatically
 * late -> to say we'll assign a value to the veriable later
 * 
 */

void main() {
  bool boolValue = false; //static typing
  print('Boolean value 1: $boolValue');

  bool boolValue2 = true; //static typing
  print('Boolean value 2: $boolValue2');

  int intValue1 = 1; //static typing
  print('Integer value 1: $intValue1');

  int intValue2 = -1; //static typing
  print('Integer value 2: $intValue2');

  double doubleValue1 = 0.5; //static typing
  print('Double value 1: $doubleValue1');

  double doubleValue2 = 0.110; //static typing
  print('Double value 2: $doubleValue2');

  String username = "student_name"; //static typing
  print('Name of student: $username');

  //A good to know it exists but should be avoided if possible.
  dynamic variableUnknown = 0;
  print('Dynamic variable value 1: $variableUnknown');

  variableUnknown = 'A';
  print('Dynamic variable value 2: $variableUnknown');

  variableUnknown = 11.5;
  print('Dynamic variable value 3: $variableUnknown');
  
  //keywords: 
  late int lateInt; // integer will have a value later.
  lateInt = 1;
  print(lateInt);

  final int finalInt = 0;
  print('Final int 1: $finalInt');

  const int constInt = 0;
  print('Constant int 1: $constInt');

  //can be used compared to dynamic, but it's not recommended in terms of code readability.
  var variableOutput = 1; //if you want to assign a value to this variable again, you have to use the same data type.

}

/**
 * Summary:
 * Internally, differnt processes are executed for different data types
 * There are primitive (lowercase) and complex (uppercase) data types
 * String 
 *    - concatention operator (+)
 *    - Multiline string
 * Automatic typing -> variables get assigned a data type during initialization if not specified.
 * The data type dynamic
 *  - Can store any data type
 *  - Avoid, if possible but can be useful in exceptional cases
 * Keywords - describe a certian behavior of a variable
 */