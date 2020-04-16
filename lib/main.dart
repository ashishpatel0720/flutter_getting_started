import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: "Trip Cost Calculator",
        home: FuelForm(),
      )

  );

}

class FuelForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  final _currencies = ["INR","Dollar","Euro","Pound"];
  String _currency= "INR"; // default value
  String result = ''; // default value

  final fieldDistance = 15.0;

  TextEditingController distanceEditingController =TextEditingController();
  TextEditingController avgEditingController =TextEditingController();
  TextEditingController priceEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip Cost Calculator"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[

            getTextField(distanceEditingController, 'Distance', 'e.g. 250'),
            getTextField(avgEditingController, 'Average of Vehicle (KM)', "eg. 12.4"),
            getTextField(priceEditingController, 'Fuel Price per Litre',"eg. 1.64"),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:50,right:20),
                  child: DropdownButton<String>(
                    items: _currencies.map((String value ){
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                              value,
                            style: TextStyle(
                              color: Colors.blue
                            ),
                          )
                      );
                    }).toList(),
                    value: _currency,
                    onChanged: (String value){
                      setState(() {
                        this._currency= value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:50.0),
                  child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          result = _calculate();
                        });
                      },
                      child:Text(
                          "Submit",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(result,
            style:TextStyle(
              fontSize: 20.0,
              color: Colors.blue,
            )
        ),
            ),
          ],
        ),
      ),
    );
  }

  String _calculate(){
    double _distance= double.parse(distanceEditingController.text);
    double _consumption= double.parse(avgEditingController.text);
    double _fuelCost= double.parse(priceEditingController.text);

      double _totalCost = _distance/_consumption * _fuelCost;
      return "The Total Cost of your trip : " + _totalCost.toStringAsFixed(2) +" "+ _currency;
  }

  Widget getTextField(TextEditingController controller, String label, String hint){
    return Container(
      padding: EdgeInsets.only(top:10.0, bottom: 10.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0)
            )
        ),
        keyboardType: TextInputType.number, // only numbers will be shown in keyboard input
      ),
    );
  }
}
