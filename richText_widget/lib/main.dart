import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RichTextExample(),
    );
  }
}

class RichTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Example'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: 'Hello, ',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: 'this is a ',
              ),
              TextSpan(
                text: 'RichText',
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
              TextSpan(
                text: ' example.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
