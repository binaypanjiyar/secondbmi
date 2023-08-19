import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text('Call-Back'),
        ),
        body: Container(
          child: Column(
            children: [
              catitems(),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: ListView.builder(itemBuilder: (context,index)=>Padding(
    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.yellow,
                      ),
                      title: Text('Name'),
                      subtitle: Text('Mobile'),
                     trailing: Icon(Icons.delete),
                    ),
                ),
              ),
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
class catitems extends StatelessWidget {
  const catitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.pinkAccent,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),itemCount: 10,scrollDirection: Axis.horizontal),
      ),
    );
  }
}
