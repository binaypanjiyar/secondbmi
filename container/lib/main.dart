import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 300,
                // alignment: Alignment.center,
                // transform: Matrix4.rotationZ(.2),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 100,
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://d3nn873nee648n.cloudfront.net/900x600/20377/300-PA1021285.jpg')
                  ),
                  border: Border.all(
                    color: Colors.cyan,
                    width: 10,
                  ),
                    color: Colors.pinkAccent,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                child: const Center(child: Text('Binay')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
