/**
 * Asynchronous programming
 *  - Allows to write programs in which the tasks are no longer solved one after the other.
 *  - Tasks are solved in parallel.
 *  - While one task is being processed, processes are already running on another task.
 *  - Some tasks take more time - with async we can wait for them to finish
 * 
 * async / await
 *  - wait for an event to occur in a thread / execution thread.
 * - syntax to work with futures
 * future
 *  - a method whose execution time is not constant / you have to wait for it.
 * 
 * async - going to use asynchronous code
 * await - to wait for futures
 * future - data type for method that is executed in the future
 */
void main() async{

  DataService dataService = new DataService();

  String data = await dataService.getData();

  print(data);


}

class DataService {

  /**
   * We are just saying the function that it will execute async code in it.
   * Future means the function will end in the future.
   */
  Future<String> getData() async{
    
    // final String dataFromCloud = await _getDataFromCloud(); //await here means that it will wait for the function to finish.
    
    // final String parsedata = await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    //! alternative way to write await
    final String parsedData = await _getDataFromCloud().then((dataFromCloud) async{
      return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
      
    });

    return parsedData;

  }

  /**
   * An asynchronous function that executes a future code that takes 4 seconds to finish and returns a string value
   */
  Future<String> _getDataFromCloud() async{
    //get data from cloud -> takes time
    await Future.delayed(Duration(seconds:  4)); //function that takes 4 seconds to finish
    print('Get data finished');
    //return the data
    return "fake data";
  }


  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {

    //parse data from cloud -> time
    await Future.delayed(Duration(seconds: 2));

    print('Parse data finished');

    return "parsed data";

  }
  /**
   * Summary
   * - Asynchronous programming allows to write programs in which the tasks are no longer solved one after the other,
   * instead are solved in parallel.
   * - async / await: Wait for an vent to occur in a thread / execution thread.
   * - Future: a method whose execution time is not constant / you have to wait for it.
   */


}