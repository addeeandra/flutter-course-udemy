import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value) {
    setState(() {
      _value1 = value;
    });
  }

  void _setValue2(int value) {
    setState(() {
      _value2 = value;
    });
  }

  Widget makeRadios1() {
    List<Widget> list = List();

    for (int i = 0; i < 3; i++) {
      list.add(Radio(value: i, groupValue: _value1, onChanged: _setValue1));
    }

    Column column = Column(children: list);

    return column;
  }

  Widget makeRadios2() {
    List<Widget> list = List();

    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        title: Text('Item $i'),
        subtitle: Text('Subtitle'),
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
      ));
    }

    Column column = Column(children: list);

    return column;
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
              Text('Radios Example'),
              makeRadios1(),
              makeRadios2()
            ],
          ),
        ),
      ),
    );
  }
}
