/**
 * What are boolean expressions?
 *  - is a comparison
 *  - result can only be either true or false
 *  - can formulate conditions
 * Comparison operators
 * if-statements
 * if-else-statements
 * 
 * Operator 
 * less than (<) 
 *   - example: 1 < 2 = true
 *   - example: 2 < 1 = false
 * more than (>) 
 *   - example: 2 > 1 = true
 *   - example: 1 > 2 = false
 * less than or equal (<=)
 *   - example: 2 <= 2 = true
 *   - example: 2 <= 1 = false
 *  more than or equal (>=)
 *   - example: 1 >= 1 = true
 *   - example: 1 >= 2 = false
 *  equal (==)
 *    - example: 1 == 1 = true
 *    - example: 1 == 2 = false
 *  not equal (!=)
 *    - example: 1 != 2 = true
 *    - example: 2 != 2 = false
 * 
 */
void main() {

    // String string1 = "apple";
    // String string2 = "apple"; 

    // print(string1 == string2);

    // string1 = "mango"; 
    // string2 = "apple";

    // print(string1 == string2);
    // print(string1 != string2);

    // int int1 = 0;
    // int int2 = 1;

    // print(int1 > int2);
    // print(int1 < int2);

    // int1 = 1;
    // int2 = 2;

    // print(int1 <= int2);
    // print(int1 >= int2);

    int age = 16;

    print('User is $age years old.');

    if(age >= 18){
    
      print('You can watch the movie.');
    
    }else if (age >= 16){
    
      print('You can watch the movie but we need a writtent letter from your parents.');
    
    }else{
    
      print('You are not allowed to watch the movie');
    
    }

}
/**
 * Summary:
 *  - Boolean expressions can only return true / false and help formulate conditions
 *  - Comparison operators < > <= >= == !=
 *  - if-statement syntax: if() + else if() + else 
 */