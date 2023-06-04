import 'dart:io';

void main(){
  new Prompt();
}

class Prompt{

  Prompt(){
    printGreeting();
    promptUserForActions();
  }

  late String userAction = "";

  void printGreeting(){
    print('Good day, welcome to contact application');
  }

  void promptUserForActions(){
    
    print('Choose any of the following commands:');
    print('[A] Create contact');
    print('[B] Delete contact');
    print('[C] View all contacts');

    stdout.write('\nEnter letter of your choice: ');

    userAction = stdin.readLineSync().toString();

    evaluateUserChosenAction(userAction);

  }

  void evaluateUserChosenAction(String userAction){

    Contact userContact = new Contact();

    switch(userAction){
      case "A":
        userContact.promptUserToEnterContactToAdd();
      break;
      
      case "B":
        userContact.promptUserToEnterContactForDeletion();
        userContact.deleteContact();
      break;
    
      case "C":
        userContact.printAllContacts();
      break;
    }

  }

}

class Contact{

  List<String> userContacts = ["First name 1 Last name 1", 
  "First name 2 Last name 2",
  "First name 3 Last name 3"];

  late String contactName;

  void printAllContacts(){
    
    print('\nCurrent contacts on the list: ');

    if(userContacts.isNotEmpty){
    
        userContacts.forEach((element) { print('Contact: $element'); });

    }else{
    
      print('\nUser contacts is empty');
    
    }
  
  }

  void promptUserToEnterContactToAdd(){

    stdout.write("First name: ");
    String firstName = stdin.readLineSync().toString();

    stdout.write("Last name: ");
    String lastName = stdin.readLineSync().toString();

    userContacts.add('$firstName $lastName');
    
    print('\nAdded new contact.');

    printAllContacts();
  
  }
  

  void promptUserToEnterContactForDeletion(){

    stdout.write('Enter a name to delete: ');

    contactName = stdin.readLineSync().toString();
    
  }

  void deleteContact(){
    
    userContacts.removeWhere((element) => element == contactName);
    
    print('\nContact deleted');

    printAllContacts();

  }

}