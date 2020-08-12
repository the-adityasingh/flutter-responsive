//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'AspectRatioScreen.dart';
import 'FittedBoxScreen.dart';
import 'FractionallySizedBoxScreen.dart';
import 'LayoutBuilderScreen.dart';
import 'MediaQueryScreen.dart';
import 'MediaQueryDataScreen.dart';
import 'OrientationBuilderScreen.dart';
import '../main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Center(
        child: new ButtonTheme(
          minWidth: 200,
          buttonColor: Colors.lightBlue,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                child: Text('Aspect Ratio'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AspectRatioScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Custom singlechild layout'),
                onPressed: () {

                },
              ),
              new RaisedButton(
                child: Text('Custom multichild layout'),
                onPressed: () {

                },
              ),
              new RaisedButton(
                child: Text('Fitted box'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FittedBoxScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Fractionally sized box'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FractionallySizedBoxScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Layout builder'),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LayoutBuilderScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Media query'),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MediaQueryScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Media query data'),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MediaQueryDataScreen()),
                  );
                },
              ),
              new RaisedButton(
                child: Text('Orientation builder'),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrientationBuilderScreen()),
                  );
                },
              )
            ],
          ),
        )
      )
    );
  }
}
