import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String _value = '';

  void _onClick(String value) {
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
      persistentFooterButtons: <Widget>[
        IconButton(icon: Icon(Icons.timer), onPressed: () => _onClick('Button 1')),
        IconButton(icon: Icon(Icons.home), onPressed: () => _onClick('Button 2')),
        IconButton(icon: Icon(Icons.adb), onPressed: () => _onClick('Button 3')),
      ],
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[Text(_value)],
          ),
        ),
      ),
    );
  }
}
