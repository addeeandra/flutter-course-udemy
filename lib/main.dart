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

  void _onClicked() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        mini: false,
        child: Icon(Icons.timer),
      ),
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
