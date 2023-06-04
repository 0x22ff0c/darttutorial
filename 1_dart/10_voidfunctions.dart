/**
 * What is a method / function
 * - Code we can run more often without writing it repeatedly
 * - Can be accessed with the method name
 */
void main(){
  calculatePow(4);
  calculatePow(60);
  calculatePow(40);
  calculatePow(2);
}

void calculatePow(int number){
  int product = number * number;
  print('result of $number raised to $number = $product');
}
/**
 * Summary
 * - Methods can be called multiple times
 * - Can be called with the method name
 * - When no return value is needed you use the void keyword as return value
 * - A method can have parameters
 */