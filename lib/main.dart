import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
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
              Text('Images Demo'),
              Expanded(child: Image.asset('images/flutter.png')),
              Expanded(child: Image.network('http://voidrealms.com/images/smile.jpg'))
            ],
          ),
        ),
      ),
    );
  }
}
