import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
  return  _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  // var count = 0;
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  var result='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Basic calculation')),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1Controller.text.toString());
                    var no2=int.parse(no1Controller.text.toString());
                    var sum=no1+no2;
                    result="The sum of $no1 and $no2 is $sum";
                    setState(() {

                    });
                  }, child: Text('Add')),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1Controller.text.toString());
                    var no2=int.parse(no1Controller.text.toString());
                    var Sub=no1-no2;
                    result="The sub of $no1 and $no2 is $Sub";
                    setState(() {

                    });
                  }, child: Text('Sub')),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1Controller.text.toString());
                    var no2=int.parse(no1Controller.text.toString());
                    var Mul=no1*no2;
                    result="The Mul of $no1 and $no2 is $Mul";
                    setState(() {

                    });
                  }, child: Text('Mul')),
                  ElevatedButton(onPressed: (){
                    var no1=int.parse(no1Controller.text.toString());
                    var no2=int.parse(no1Controller.text.toString());
                    var Div=no1/no2;
                    result="The Div of $no1 and $no2 is $Div";
                    setState(() {

                    });
                  }, child: Text('Div')),
                ],
            ),
          ),
                  Padding(padding: EdgeInsets.all(8),
                    child: Text(result,style:TextStyle(fontSize: 25,color: Colors.black)),),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
//Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('counter:$count',style: TextStyle(fontSize: 34),),
//               ElevatedButton(onPressed: (){
//                 setState(() {
//                   count++;
//                   //print(count);
//                 });
//               }, child: Text('Increment Count'))
//             ],
//           ),
//         ),