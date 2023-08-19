import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PositionedExample(),
    );
  }
}

class PositionedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Widget Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Positioned(
              top: 50,
              left: 50,
              width: 200,
              height: 100,
              child: Container(
                color: Colors.red,
                child: Center(child: Text('Positioned Widget')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
