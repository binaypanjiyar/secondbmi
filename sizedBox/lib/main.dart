import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizedBoxExample(),
    );
  }
}

class SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Fixed Size SizedBox
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Fixed Size')),
              ),
            ),
            SizedBox(height: 20.0), // Vertical spacing

            // Only Width SizedBox
            SizedBox(
              width: 150.0,
              child: Container(
                color: Colors.red,
                child: Center(child: Text('Width Only')),
              ),
            ),
            SizedBox(height: 20.0), // Vertical spacing

            // Only Height SizedBox
            SizedBox(
              height: 50.0,
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Height Only')),
              ),
            ),
            SizedBox(height: 20.0), // Vertical spacing

            // Square SizedBox
            SizedBox.square(
              dimension: 100.0,
              child: Container(
                color: Colors.yellow,
                child: Center(child: Text('Square')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
