import 'dart:io';

void main(){

  int userInput = 0;
  int originalUserInput;
  String? actualUserInput = "";

  RegExp regExp = new RegExp(r'^[0-9]+$');

  do{

    stdout.write('Input a number: ');
    actualUserInput = stdin.readLineSync();

  }while(!regExp.hasMatch(actualUserInput.toString()));

  userInput = int.parse(actualUserInput.toString());
  originalUserInput = userInput;

  int product = 1;

  if(userInput == 0){
    product = 1;
  }else{
    while(userInput >= 1){
    product *= userInput;
    userInput -= 1;
    } 
  }

    print('Factorial of: $originalUserInput is $product');
  
}