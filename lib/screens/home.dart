import 'package:flutter/material.dart';

class Home extends StatelessWidget { // stateless widget is a generic Widge
  @override
  Widget build(BuildContext context) {
    return Material( // new is optional
        color: Colors.deepPurple,
        child:
        Center( // container widget which will center its child horizontally and vertically
            child: Text(
              "Home\nHello World !",
              style: TextStyle(color: Colors.white,fontSize: 36.0),
              textDirection: TextDirection.ltr, // left to right
            )
        )
    );
  }

}
