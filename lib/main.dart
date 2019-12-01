import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<MyApp> {

  List<Step> _steps;
  int _current;

  @override
  void initState() {
    _current = 0;
    _steps = <Step>[
      new Step(title: new Text('Step 1'),
          content: new Text('Do something'),
          isActive: true),
      new Step(title: new Text('Step 2'),
          content: new Text('Do something'),
          isActive: false),
      new Step(title: new Text('Step 3'),
          content: new Text('Do something'),
          isActive: false)
    ];
    super.initState();
  }

  void _stepContinue() {
    setState(() {
      _current++;
      if (_current >= _steps.length) _current = _steps.length - 1;
    });
  }

  void _stepCancel() {
    setState(() {
      _current--;
      if (_current < 0) _current = 0;
    });
  }

  void _stepTap(int index) {
    setState(() {
      _current = index;
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
          child: new Stepper(
            steps: _steps,
            type: StepperType.vertical,
            currentStep: _current,
            onStepCancel: _stepCancel,
            onStepContinue: _stepContinue,
            onStepTapped: _stepTap,
          ),
        ),
      ),
    );
  }
}
