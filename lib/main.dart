import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _onValue1Changed(bool value) {
    setState(() {
      _value1 = value;
    });
  }

  void _onValue2Changed(bool value) {
    setState(() {
      _value2 = value;
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
              Text('Checkbox Example'),
              Checkbox(value: _value1, onChanged: _onValue1Changed),
              CheckboxListTile(
                value: _value2,
                onChanged: _onValue2Changed,
                title: Text('Agree with our terms'),
                subtitle: Text('See our terms & condition'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
