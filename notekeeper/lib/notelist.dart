import 'package:flutter/material.dart';
import 'package:notekeeper/note_detail.dart';
import 'dbHelper.dart';
class NoteList extends StatefulWidget {
  // const NoteList({super.key});
DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Note'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('Fab clicked');
          navigateToDetail('Add note');
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }
  ListView getNoteListView(){
    // TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
        itemBuilder: (BuildContext context,int position)
        {
          return Card(
            color: Colors.white,
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text('Dummy Title',style:TextStyle(fontSize: 20)),
              subtitle: Text('Dummy Date'),
              trailing: Icon(Icons.delete,color: Colors.grey,),
              onTap: (){
                debugPrint("LisTile Tapped");
                navigateToDetail('Edit Note');
              },
            ),
          );
        },
    );
  }
  void navigateToDetail(String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return NoteDetail(title);
    }));

  }
}
