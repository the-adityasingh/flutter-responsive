import 'package:flutter/material.dart';

import 'Home.dart';

class AspectRatioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Center(
        child: AspectRatio(
          aspectRatio: 3/1,
          child: Card(
            color: Colors.white70,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('This is the Aspect Ratio implementation'),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Go back'),
                      color: Colors.lightBlue,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),
    ),);
  }
}