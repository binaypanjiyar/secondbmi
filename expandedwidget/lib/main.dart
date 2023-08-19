import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dashboard')),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 50,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            width: 50,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              height: 150,
              width: 50,
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              width: 50,
              color: Colors.orange,
            ),
          ),
          // const ListTile(
          //   leading: Text('Image'),
          //   title:Text('Name') ,
          //   subtitle: Text('number'),
          //   trailing: Icon(Icons.add),
          // ),
        ],
      ),
      )
    );
  }
}
