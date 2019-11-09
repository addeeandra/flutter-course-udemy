import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String _valueText = '';
  String _valueInput = '';

  void _onInputChanged(String newValue) {
    setState(() {
      _valueInput = newValue;
    });
  }

  void _onSubmitPressed() {
    setState(() {
      _valueText = _valueInput;
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
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Type your name',
                    icon: Icon(Icons.people)),
                autofocus: true,
                autocorrect: false,
                onChanged: _onInputChanged,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(_valueText),
              ),
              RaisedButton(
                onPressed: _onSubmitPressed,
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
