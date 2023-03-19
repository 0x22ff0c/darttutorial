import 'dart:io';

void main() {
  
  guessTheNumber();

}

void giveFeedback(int userGuess, int numberOfAttempts){

    if(userGuess == 1){
    
      print('Congratulations, you were able to guess the number. It took you $numberOfAttempts attempts.');
    
    }else if(userGuess < 1 || userGuess <= 4){
    
      print('You almost got it, keep going.');
    
    }else{
    
      print('Your guess is too high');
    
    }

}

int getUserInput(){

    stdout.write("What's your guess? ");

    return int.parse(stdin.readLineSync().toString());

}

void guessTheNumber(){
  int numberToGuess = 1;
  int attemptNumber = 1;
  int userGuess = 0;

  do{

    print('Attempt: ${attemptNumber}');
    
    userGuess = getUserInput();
    
    giveFeedback(userGuess, attemptNumber);

    attemptNumber++;
  
  }while(numberToGuess != userGuess);

}