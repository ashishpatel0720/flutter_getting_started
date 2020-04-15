import 'package:flutter/material.dart'; // material design component for flutter


void main() => runApp( // create and attach widget to app
    HelloWorldApp()
  );

class HelloWorldApp extends StatelessWidget { // stateless widget is a generic Widge
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // allows us to give App a name
      title: "Hello Flutter App",
      home: Scaffold (  // allows us to have basic material design layout
        appBar: AppBar(
            title: Text("App title bar")
        ),
        body: Material( // new is optional
            color: Colors.deepPurple,
            child:
            Center( // container widget which will center its child horizontally and vertically
                child: Text(
                  "Hello World!",
                  style: TextStyle(color: Colors.white,fontSize: 36.0),
                  textDirection: TextDirection.ltr, // left to right
                )
            )
        ),
      ),
    );
  }

}
