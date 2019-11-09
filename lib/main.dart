import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {

  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = List();
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('People')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.timer), title: Text('Timer')));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')));
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
            children: <Widget>[Text(_value)],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState(() {
            _index = item;
            _value = 'Selected index is $_index';
          });
        },
      ),
    );
  }
}
