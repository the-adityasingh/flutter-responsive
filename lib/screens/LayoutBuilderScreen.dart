import 'package:flutter/material.dart';
import 'Home.dart';

class LayoutBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: new LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if(constraints.maxWidth > 200)  {
                return new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: RaisedButton(
                        color: Colors.lightBlue,
                        child: Text('Go back'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ),
                    Container(
                      child: Text('The max width is > 200'),
                    )
                  ]
                );
              }
              else {
                return new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        child: Text('The max width is < 200'),
                      ),
                    ]
                );
              }
            },
          ),
        )
    );
  }
}
