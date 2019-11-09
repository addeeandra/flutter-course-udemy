import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = '';

  void _setValue(String value) {
    setState(() {
      _value = value;
    });
  }

  Future _askUser() async {
    switch (await showDialog(
        context: context,
        child: SimpleDialog(
          title: Text('Do you like Flutter?'),
          children: <Widget>[
            SimpleDialogOption(
                child: Text('Yes!!'),
                onPressed: () => Navigator.pop(context, Answers.YES)),
            SimpleDialogOption(
                child: Text('NO :('),
                onPressed: () => Navigator.pop(context, Answers.NO)),
            SimpleDialogOption(
                child: Text('Maybe?'),
                onPressed: () => Navigator.pop(context, Answers.MAYBE)),
          ],
        ))) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('NOOO');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
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
              RaisedButton(onPressed: _askUser, child: Text('Ask me!'))
            ],
          ),
        ),
      ),
    );
  }
}
