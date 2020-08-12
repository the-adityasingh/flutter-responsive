import 'package:flutter/material.dart';
import 'Home.dart';

class MediaQueryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio; // Calculate screen width
    double screenHeight = MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio; // Calculate screen height
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
                  child: Text("This height of the screen is $screenHeight and width of the screen is $screenWidth"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}