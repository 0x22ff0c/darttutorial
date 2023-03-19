/**
 * for loop
 * - used when you know how often the loop should be repeated.
 * - for loops have a counter (index, which contains the current number of the run).
 * 
 */
void main(){
  List<int> intList = [1,2,3,4,5,6];
  List<int> secondList = [];

  for(int index = 0; index < intList.length; index++){
    if(intList[index] == 3){
      secondList.add(intList[index]);
    }
    print('List item: ${intList[index]}');

  }

  print(secondList);

}
/**
 * Summary:
 * - Used when you know how many times the loop should be repeated.
 * - for loops have a counter / index
 * - loop head consists of three parts:
 *    - counter / index: int i = 0
 *    - conditoon: i < 10
 *    - change the counter: i++:
 */