import 'package:flutter/material.dart'; // material design component for flutter


void main(){

  runApp( // create and attach widge to app
    Center( // container widget which will center its child horizontally and vertically
        child: Text(
          "Hello World!",
          textDirection: TextDirection.ltr, // left to right
        )
    )
  );
}
