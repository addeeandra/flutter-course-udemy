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

  void _onChanged(String value) {
    setState(() {
      _value = 'On Change : $value';
    });
  }

  void _onSubmitted(String value) {
    setState(() {
      _value = 'On Submit : $value';
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
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText: 'Email',
                    hintText: 'johndoe@gmail.com'),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                onChanged: _onChanged,
                onSubmitted: _onSubmitted,
              )
            ],
          ),
        ),
      ),
    );
  }
}
