import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: <Widget>[
                      Text('Hello World'),
                      Text('How are you?'),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: <Widget>[
                      Text('Hello World'),
                      Text('How are you?'),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: <Widget>[
                      Text('Hello World'),
                      Text('How are you?'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
