import 'package:flutter/material.dart';
import 'Home.dart';

class OrientationBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new OrientationBuilder(builder: (context, orientation) {
        if(orientation == Orientation.landscape)  {

        }
        return new Column(
        children:
        <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    color: Colors.lightBlue,
                    child: Text('Go back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  child: Text("This orientation of the screen is $orientation "),

                )
              ],
            ),
          )
        ]
        );
      }
      ),
    );
  }
}