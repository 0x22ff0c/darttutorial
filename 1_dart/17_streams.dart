import 'dart:async';

/**
 * Futures represent a value that they deliver asynchronously
 * Streams are simular but instead of a single value, they can return 0 or more values or errors over time.
 * Synchrounous:
 *  - int
 *  - List<int>
 * 
 * Asynchronous
 *  - Future<int>
 *  - Stream<int>
 * 
 * Example read file
 *  - File openRead method
 *  - Returns a stream with the records read one by one
 *  - You can listen to the stream elsewhere in the program and execute code for each record read.
 */

void main() {

  // Stream numberStream = NumberGenerator().getStream.asBroadcastStream();

  //! broadcast -> can hundle multiple subsribers

  // StreamSubscription subscriber1 = numberStream.listen((event) {
  //   print("Subscriber 1 output: " + event.toString());
  // },
  
  //  onDone: (){
  //   print("Timer finished");
  // });

  // StreamSubscription subscriber2 = numberStream.listen((event) {
  //   print("Subscriber 2 output: " + event.toString());
  // });

}

class NumberGenerator{

  int _counter = 0;
  StreamController<int> _controller = StreamController<int>();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator(){
    final timer = Timer.periodic(Duration(seconds: 1), (timer) {

      _controller.sink.add(_counter);
      _counter++;

    });

    Future.delayed(Duration(seconds: 10), () => timer.cancel());
  }

}
/**
 * Summary
 * - Streams can give back null, multiple values or errors over time
 * - To manipulate a stream, you need a controller 
 *    - .sink / .add you can add values
 * 
 * - To listen to a stream, you need to create a subscription
 *    - with .listen you can listen to a stream and execute code for each event.
 */