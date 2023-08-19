import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWrapWidget(),
    );
  }
}

class MyWrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          direction: Axis.horizontal, // You can change this to Axis.vertical if needed
          spacing: 8.0, // Space between horizontal or vertical items
          runSpacing: 8.0, // Space between wrapped lines or columns
          children: List.generate(
            20,
                (index) => Container(
              width: 80,
              height: 80,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  '$index',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
