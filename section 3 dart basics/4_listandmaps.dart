/**
 * List & Arrays
 * - Arrays are like variables that can hold multiple values.
 * - Data structure
 * - Specific values can be accessed via index
 * 
 * Array structure:
 * 
 * index | 0 | 1 | 2 | 3 | 4 | 5 |
 * value | 1 | 2 | 3 | 4 | 5 | 6 |
 * 
 * index | 0       |  1  |
 * value | "hello" | "1" |
 * 
 * The first index of an array or list is always 0.
 * 
 * Maps
 * - Data structure with key-value pairs
 * - The access to a value is done via the corresponding key
 * 
 *   key   |   value
 * "key1"  |     2
 * "key2"  |     3 
 * 
 */

void main() {
  
  //region List

  List exampleList = [1,2,3,4]; //dynamically typed list

  List<int> exampleList1 = [1,2,3,4]; //statically typed list

  print(exampleList);

  print(exampleList[0]); //prints 1
  print(exampleList[1]); //prints 2
  print(exampleList[2]); //prints 3
  print(exampleList[3]); //prints 4

  print('Total length of the list : ${exampleList1.length}'); //prints out the length of the list
  print('List in reverse: ${exampleList1.reversed}'); //reverses the list

  exampleList1.add(5); // adds the item on the list

  print(exampleList1);

  print('Last item on the list: ${exampleList1.last}'); //prints the last item on the list.

  //endregion

  //region Map

  //dynamically typed map
  Map exampleMap = {
    "key1" : "value1",
    "key2" : "value2",
    "key3" : "value3"
  };

  //statically typed map
  Map<int, String> exampleMap1 = {
    1: "Hello 1",
    2: "Hello 2",
    3: "Hello 3"
  };

  print(exampleMap1);

  print('Value in key1: ${exampleMap["key1"]}');

  print('Value in key 1: ${exampleMap1[1]}');

  //endregion

}
/**
 * Summary 
 * Map
 *  - Data structure with key-value pairs
 *  - Query of a specific value is done via the key
 *  key    |   value
 *  "key1" |    2
 *  "key2" |    3
 *  "key3" |    4 
 */