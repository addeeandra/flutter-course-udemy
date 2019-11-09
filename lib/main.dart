import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String _value = 'Hello world!';

  void _onPressed(String value) {
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
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              RaisedButton(
                onPressed: () => _onPressed('Halo Dunia!'),
                child: Text('Press me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
