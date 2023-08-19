import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
//   final String name;
//   final int age;
//   const SecondScreen({
//     Key? key,
//     required this.name,
//     required this.age,
// }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the first screen
            Navigator.pop(context);
          },
          child: Text('Back goto the first screen'),
          //Text(name) when passing data from one screen to another
        ),
      ),
    );
  }
}
