import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
        bottomNavigationBar: const GNav(
          backgroundColor: Colors.blue,
          color: Colors.white,
          tabBackgroundColor: Colors.white,
          gap: 8, //for the between the icon and text of the Icon
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(icon: Icons.home,text: "Home",),
            GButton(icon: Icons.favorite_border,text: "Likes",),
            GButton(icon: Icons.add,text: "Add",),
            GButton(icon: Icons.search,text: "Search",),
            GButton(icon: Icons.settings,text: "Setting",),
          ],
        ),
      ),
      ),
    );
  }
}
