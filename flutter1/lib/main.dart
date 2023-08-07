import 'package:flutter/material.dart';

void main() {
  debugPrint("apple");
  runApp(const MyApp());
}

//Text('Hello World')
//NetworkImage(
//  "https://d3nn873nee648n.cloudfront.net/900x600/100234/300-ZM1024042.jpg"),
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.lightGreenAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            'Photo of Binay',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Pacifico',
                color: Colors.teal,
                fontWeight: FontWeight.w100),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, //vertically
            crossAxisAlignment: CrossAxisAlignment.center, //horzontally
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Binay",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.teal,
                        fontSize: 30,
                        decoration: TextDecoration.underline),
                  ),
                  Icon(Icons.ac_unit),
                  Text("Binay"),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrangeAccent,
                child: const Center(child: Text("container 1")),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
                child: const Center(child: Text("container 2")),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
                child: const Center(child: Text("container 1")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// const Center(
// child: Image(
// image:AssetImage("assets/Binay.jpg"),
// ),
// ),
