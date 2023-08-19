import 'package:flutter/material.dart';
import 'package:stack_widget/widget/rounded_buttonwidget.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
body: RoundedButton(btnName: 'login',
  bgColor: Colors.cyan,
  icon: Icon(Icons.lock),
callBack: (){
  print('Login in!!!');
    },
  ),
));
  }
}
//body: Stack(
//   children: [
//     Container(
//       height: 200,
//       width: 200,
//       color: Colors.blueGrey,
//     ),
//     Positioned(
//     left: 10,
//       right: 10,
//       top: 10,
//       bottom: 10,
//       child: Container(
//         height: 120,
//         width: 120,
//         color: Colors.grey,
//       ),
//     ),
//   ],
// ),