import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text-Input'),
        ),
        body: Center(
            child: Container(
          width: 300,
          //height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('current Time:$time'),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'username',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.orangeAccent,
                        width: 2,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  // suffixText: "userName",
                  // suffixIcon: IconButton(
                  //   icon: Icon(Icons.remove_red_eye,color: Colors.orangeAccent,),
                  //   onPressed: (){
                  //
                  //   },
                  // ),
                  prefixIcon: Icon(Icons.account_circle),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText:
                    true, //to hide text noraml entery make it unvisible
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.orangeAccent,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  //suffixText: "userName",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.orangeAccent,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.orangeAccent,
                        ))),
              ),
              Text(
                'Select date',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023));
                    if(datePicked!=null){
                      print('Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                    }
                  },
                  child: Text('show'))
            ],
          ),
        )),
      ),
    );
  }
}
