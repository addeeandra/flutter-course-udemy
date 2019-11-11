import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

enum Animals { Cat, Dog, Bird, Lizard, Fish }

class _State extends State<MyApp> {
  Animals _selected = Animals.Cat;
  String _value = 'Make a Selection';
  List<PopupMenuItem<Animals>> _items = new List();

  @override
  void initState() {
    for (Animals animal in Animals.values) {
      _items.add(PopupMenuItem(
        child: Text(_getDisplay(animal)),
        value: animal,
      ));
    }
    super.initState();
  }

  void _onSelected(Animals animal) {
    setState(() {
      _selected = animal;
      _value = 'You Selected ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal) {
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
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
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(_value),
              ),
              PopupMenuButton<Animals>(
                child: Icon(Icons.input),
                initialValue: Animals.Cat,
                onSelected: _onSelected,
                itemBuilder: (BuildContext context) {
                  return _items;
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
