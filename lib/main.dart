import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  Map _countries = Map();

  void _getData() async {
    var url = 'http://country.io/names.json';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _countries = jsonDecode(response.body);
        print('Loaded ${_countries.length} countries');
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
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
              Text('Countries', style: TextStyle(fontWeight: FontWeight.bold)),
              Expanded(child: ListView.builder(
                itemCount: _countries.length,
                itemBuilder: (BuildContext context, int index) {
                  String _key = _countries.keys.elementAt(index);
                  return Row(
                    children: <Widget>[
                      Text('$_key : '),
                      Text(_countries[_key])
                    ],
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
