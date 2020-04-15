import 'package:flutter/material.dart'; // material design component for flutter
import 'package:helloflutter/screens/home.dart';

void main() => runApp( // create and attach widget to app
    HelloWorldApp()
  );

class HelloWorldApp extends StatelessWidget { // stateless widget is a generic Widge
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // allows us to give App a name
      debugShowCheckedModeBanner: false, // if want to remove 'debug' banner
      title: "Hello Flutter App",
      home: Scaffold (  // allows us to have basic material design layout
        appBar: AppBar(
            title: Text("App title bar")
        ),
        body: Home()
      ),
    );
  }

}
