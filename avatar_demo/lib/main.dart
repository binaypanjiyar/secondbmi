import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "theme",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          displaySmall: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
          titleMedium: TextStyle(fontWeight: FontWeight.bold),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Avatar-the way of water",
          ),
        ),
        //to add elevation in the card
        body:const Center(
          child: Card(
            elevation: 20,
            color: Colors.orange,
    child: Padding(
      padding:EdgeInsets.all(10),
      child: Text('hello word')),
      ),
        ),
      ),
    );
  }
}
// To use the theme in app that work in all app of other app
// Column(
// children: [
// Text('Wel-Come',style: Theme.of(context).textTheme.displaySmall),
// Text('to Flutter',style: Theme.of(context).textTheme.titleMedium),
// Text('Wel-Come',style: Theme.of(context).textTheme.displayLarge),
// Text('Dart Programming',style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.green)),
// ],
// ),
//Circleavatar is used to display the image in the circular form like that user profile and list view like chapApp
// const Center(
// child: CircleAvatar(
// child: Text(
// 'binay',
// style: TextStyle(
// color: Colors.green,
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// backgroundImage: AssetImage('images/Binay.jpg'),
// backgroundColor: Colors.transparent,
// radius: 100,
// // maxRadius: 100,
// // minRadius: 100,
// ),