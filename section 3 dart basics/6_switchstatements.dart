/**
 * What is a switch case?
 *  - switch cases are part of the control flow for the program.
 *  - does not work with condition but with the check if a value is equal to a certain value
 */
void main(){

  final String name = "Pater";

  switch(name){
    case "Peter":
      print('$name Parker');
    break;
    case "Pater":
      print('$name Baker');
    break;
    default: 
      print('hello there $name');
    break;
  }

}
/**
 * Summary:
 *  - switch cases are part of the control flow for the program.
 *  - Does not work with conditons but it needs to check if a value is equal to a certain value.
 *  - Each case is terminated with a break; or return;
 */