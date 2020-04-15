
import 'package:flutter/material.dart';

class   Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // container is like <div> in web
         alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        padding: EdgeInsets.only(top:40.0, bottom:40.0, right:10.0, left:10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded( child: Text("Margherita",
                    textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                )),
                Expanded( child: Text("Tomato, Mozzarella, Basilasfdsf",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                )),
              ],
            ),
            Row( // piza 2
              children: <Widget>[
                Text("Marinara",
                    textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
                Expanded( child: Text("Tomato, Garlic",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                )),
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        )
      ),
    );
  }
}



class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaImage = AssetImage("images/pizza.jpg");
    Image image = Image( image:pizzaImage,height: 400.0, width: 400.0);
    return Container(child:image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top:50),
      child: RaisedButton(
        child: Text("Place Order!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () => order(context),
      ),
    );
    return button;
  }

  void order(BuildContext context) {

    // create an alert dialog and
    var alert = AlertDialog(
      title: Text("Success!"),
      content: Text( " Thanks for ordering!")
    );

    showDialog(context: context, // do this when order() is called
      builder: (BuildContext context) => alert // return this alert which will be shown
    );
  }

}
