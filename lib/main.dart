import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
        context: context,
        child: AlertDialog(
          title: Text(message),
          actions: <Widget>[
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('YES!')),
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OF COURSE', style: TextStyle(color: Colors.red),))
          ],
        ));
  }

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
              Text('Add Widgets here'),
              RaisedButton(
                  onPressed: () => _showAlert(context, "Do your like Flutter?"),
                  child: Text('Show Dialog'))
            ],
          ),
        ),
      ),
    );
  }
}
