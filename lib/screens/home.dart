import 'package:flutter/material.dart';

class Home extends StatelessWidget { // stateless widget is a generic Widge
  @override
  Widget build(BuildContext context) {
    return Material( // new is optional
        color: Colors.deepPurple,
        child:
        Center( // container widget which will center its child horizontally and vertically
            child: Text(
              sayHello(),
              style: TextStyle(color: Colors.white,fontSize: 36.0),
              textDirection: TextDirection.ltr, // left to right
            )
        )
    );
  }

  String sayHello(){
    String hello="hello";

    int hour= DateTime.now().hour;
    int minute=DateTime.now().minute;
    int second=DateTime.now().second;

    String time=hour.toString()+":"+minute.toString();

    if(hour<12)
      hello="Good Morning";
    else if(hour<16)
      hello="Good Afternoon";
    else
      hello="Good Evening";

    return "Its now $time.\n"+hello;
  }
}
