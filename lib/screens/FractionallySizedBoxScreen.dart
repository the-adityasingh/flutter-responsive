import 'package:flutter/material.dart';
import 'Home.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: RaisedButton(
            child: Text('Go back'),
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      )

    );
  }
}