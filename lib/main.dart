import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {

  bool _value = false;

  void _onValueChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Here'),
      ),
      drawer: Drawer(
          child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              onChanged: _onValueChanged,
              value: _value,
              title: Text('Hello Drawer'),
              subtitle: Text('Say hiiii!'),
            ),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            )
          ],
        ),
      )),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[Text('Add Widgets here')],
          ),
        ),
      ),
    );
  }
}
