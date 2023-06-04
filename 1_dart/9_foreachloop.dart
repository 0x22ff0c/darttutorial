/**
 * Used for every element inside a list / map / set
 * For each element -> do..
 * Does not have an index
 * While iterating through a list we cannot manipulate it (in short, only reads through the list)
 */
void main() {
  List<int> intList = [1,2,3,4,5,6];
  List<int> secondList = [];

  intList.forEach((element) { //for each element in intList, execute code inside of curly brackets.
    element++;
    print(element);
    secondList.add(element);
  });

  print('First list: $intList');

  print('Second list: $secondList');

}
/**
 * Summary
 * - for-each, usd for ALL elements in a list
 * - executes an action for each element
 * - [1,2,3].foreach((element) => print(element))
 */