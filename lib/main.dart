import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  void _showbar() {
    _scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text('Hello world!'),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text('Name Here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Add Widgets here'),
              RaisedButton(onPressed: _showbar, child: Text('Click me!'))
            ],
          ),
        ),
      ),
    );
  }
}
