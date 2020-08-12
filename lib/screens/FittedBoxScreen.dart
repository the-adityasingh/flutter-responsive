import 'package:flutter/material.dart';
import 'Home.dart';

class FittedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: <Widget>[
          FittedBox(child: Column(
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
                child: Text("This is the fitted box screen"),
              )
            ],
          ),
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}