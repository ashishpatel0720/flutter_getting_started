import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: "Pizza Ordering App",
        home: HelloYou(),
      )

  );

}

class HelloYou extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloYou App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  helperText:"Please input your name"
              ),
              onChanged: (String str){
                setState(() { // only setState() will be able to change state ( same as React)
                  name = str;
                });
              },
            ),
           Text("Hello "+ name+ '!')
          ],
        ),
      ),
    );
  }

}
