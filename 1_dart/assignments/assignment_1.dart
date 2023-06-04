import 'dart:io';

void main(List<String> args) {
  print('Assignment 1: Ask the user to enter a variable, read it then print it to the console.');

  stdout.write('Type a value here: '); 
  String? userInput = stdin.readLineSync();

  print('User entered: $userInput');
}