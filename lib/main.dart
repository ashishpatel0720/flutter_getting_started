import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: "Pizza Ordering App",
        home: FuelForm(),
      )

  );

}

class FuelForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  String distance = '';
  final _currencies = ["Dollar","Euro","Pound"];
  String _currency='Dollar'; // default value

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;
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
                  labelText: 'Distance',
                  hintText:"eg. 12.4",
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )

              ),
              keyboardType: TextInputType.number, // only numbers will be shown in keyboard input
              onChanged: (String str){
                setState(() { // only setState() will be able to change state ( same as React)
                  distance = str;
                });
              },
            ),
            Text("Distance: "+ distance+ ' KM'),

//            DropdownButton<String>(
//              items: _currencies.map((String value ){
//                return DropdownMenuItem<String>(
//                    value: value,
//                    child: Text(value)
//                );
//              }).toList(),
//              value: _currency,
//              onChanged: (String value){
//                setState(() {
//                  this._currency= value;
//                });
//              },
//            )
          ],
        ),
      ),
    );
  }

}
