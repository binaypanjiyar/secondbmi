import 'dart:ffi';

import 'package:flutter/material.dart';
class NoteDetail extends StatefulWidget {
  String appBarTitle;
  NoteDetail(this.appBarTitle);
  // const NoteDetail({super.key});//
  @override
  State<NoteDetail> createState() => _NoteDetailState(this.appBarTitle);
}
class _NoteDetailState extends State<NoteDetail> {
  String appBarTitle;
  static var _priorities =['Hight','Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  _NoteDetailState(this.appBarTitle);
  @override
  Widget build(BuildContext context) {
    // TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade100,
        title: Text(appBarTitle),
        leading: IconButton(icon: Icon(
          Icons.arrow_back),
          onPressed: (){
            moveToLastScreen();
          },
        ),
      ),
      body:
      Padding(
        padding: EdgeInsets.only(top: 15,left: 10,right: 10),
        child: ListView(
          children:[
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItem){
                  return DropdownMenuItem <String>
                    (value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                // style: textStyle,
                value: 'Low',
                onChanged: (valueSelectedByUser){
                  setState(() {
                    debugPrint('User selectd $valueSelectedByUser');
                  });
                }

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: TextField(
                controller: titleController,
                style: TextStyle(fontSize: 21),
                onChanged: (value){
                  debugPrint('Something is changed in Title TextField');
                },
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: TextField(
                controller: descriptionController,
                style: TextStyle(fontSize: 21),
                onChanged: (value){
                  debugPrint('Something is changed in Description TextField');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15,bottom: 15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          debugPrint('Delete button clicked');
                        });
                      },
                      child: Text('Save',style: TextStyle(fontWeight: FontWeight.bold,))),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          debugPrint('Delete button clicked',);
                        });
                      },
                      child: Text('Delete',style: TextStyle(fontWeight: FontWeight.bold))),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
  void moveToLastScreen(){
    Navigator.pop(context);
  }
}
