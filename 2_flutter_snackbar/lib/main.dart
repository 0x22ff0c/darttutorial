import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
            title: const Text("Flutter"),
    );

    const appBarTheme = AppBarTheme(
        backgroundColor: Colors.blueAccent
    );

    var centerText = const Center(
          child: Text("There's something to think about"),
    );

    var scaffold = Scaffold(
        appBar: appBar,
        body: centerText, 
        floatingActionButton: const SnackBarExample(), 
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: appBarTheme),
      home: scaffold,
    );
  }
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {

    const snackBar = SnackBar(
      content: Text('Hello there, snackbar'),
      width: 280.0,
      padding:  EdgeInsets.symmetric(horizontal: 8.0,),
      behavior: SnackBarBehavior.floating,
    );
          
    var floatingActionButton = FloatingActionButton.extended(

      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          snackBar
        );
      },
      label: const Text('Show snackbar'),
      icon: const Icon(Icons.ads_click),
      backgroundColor: Colors.blueAccent,

    );

    return floatingActionButton;

  }
}