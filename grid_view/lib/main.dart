import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors= [
      Colors.orangeAccent,
      Colors.pink,
      Colors.purple,
      Colors.green,
      Colors.yellow,
      Colors.redAccent,
      Colors.red,
      Colors.blue,
      Colors.brown,
      Colors.pinkAccent,

    ];
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Hello'),
      ),
    body:
    GridView.builder( itemBuilder: (context, index) {
      return Container(color: arrColors[index],);
    },
    itemCount: arrColors.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    )
    ),
    );
  }
}
// GridView.count(crossAxisCount: 2,
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// children: [
// Container(color: arrColors[0],),
// Container(color: arrColors[1],),
// Container(color: arrColors[2],),
// Container(color: arrColors[3],),
// Container(color: arrColors[4],),
// Container(color: arrColors[5],),
// Container(color: arrColors[6],),
// Container(color: arrColors[7],),
// Container(color: arrColors[8],),
// Container(color: arrColors[9],),
// ],)
// GridView.extent(maxCrossAxisExtent: 50,
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   children: [
//     Container(color: arrColors[0],),
//     Container(color: arrColors[1],),
//     Container(color: arrColors[2],),
//     Container(color: arrColors[3],),
//     Container(color: arrColors[4],),
//     Container(color: arrColors[5],),
//     Container(color: arrColors[6],),
//     Container(color: arrColors[7],),
//     Container(color: arrColors[8],),
//     Container(color: arrColors[9],),
//   ],),