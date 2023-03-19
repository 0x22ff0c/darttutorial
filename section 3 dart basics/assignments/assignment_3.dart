import 'dart:io';

void main(){

  int numberToGuess = 1;
  int? usersGuess;
  int attemptNumber = 0;

  do{

    print('Attempt: ${++attemptNumber}');
    stdout.write("What's your guess? ");
    usersGuess = int.parse(stdin.readLineSync().toString());

    if(numberToGuess == usersGuess){
      print('Congratulations, you were able to guess the number. It took you $attemptNumber attempts.');
    }

  }while(numberToGuess != usersGuess);

}
