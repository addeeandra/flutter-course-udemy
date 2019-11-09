import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {

  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  String _inputValue = '';

  void _onInputChange(String newValue) {
    setState(() {
      _inputValue = newValue;
    });
  }

  void _onSubmitValue() {
    _scaffoldState.currentState.showSnackBar(
        SnackBar(content: Text(_inputValue)));
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
              TextField(
                decoration: InputDecoration(
                    hintText: 'Type your name',
                    labelText: 'Name',
                    icon: Icon(Icons.verified_user)
                ),
                autofocus: true,
                onChanged: _onInputChange,
              ),
              RaisedButton(
                onPressed: _onSubmitValue,
                child: Text('Submit Now'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
