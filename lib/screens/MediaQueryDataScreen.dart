import 'package:flutter/material.dart';
import 'Home.dart';

class MediaQueryDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    String orientation;
    if(mediaQueryData.orientation == Orientation.landscape) {
      orientation = 'landscape';
    }
    else{
      orientation = 'potrait';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
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
        ],
      ),
    );
  }
}