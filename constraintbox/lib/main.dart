import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConstrainedBoxExample(),
    );
  }
}

class ConstrainedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox Widget Example'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 150.0,
            maxWidth: 300.0,
            minHeight: 100.0,
            maxHeight: 200.0,
          ),
          child: ElevatedButton(
            onPressed: (){

            },
            child: Text('Click Me'),
          )
        ),
      ),
    );
  }
}
