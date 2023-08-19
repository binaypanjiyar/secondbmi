import 'package:edatabase_example/db_handler.dart';
import 'package:edatabase_example/notes.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DBHelper? dbHelper;
  late Future<List<NotesModel>> noteList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper=DBHelper();
    loadData();
  }
  loadData () async{
    noteList = dbHelper!.getNotesList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Notes SQL'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: noteList,
                builder: (context,AsyncSnapshot<List<NotesModel>> snaphsot){
                  if(snaphsot.hasData){
                    return ListView.builder(
                      itemCount: 20,
                        itemBuilder:(context,index){
                          return InkWell(
                            onTap: (){
                              dbHelper!.update(
                                NotesModel(
                                  id: snaphsot.data![index].id,
                                    title: 'first note',
                                    age: 22,
                                    description: 'thi is gjgjhghj',
                                    email: 'rakegjhjhkjhkj')
                              );
                              setState(() {
                                noteList=dbHelper!.getNotesList();
                              });
                            },
                            child: Dismissible(
                              direction: DismissDirection.endToStart,
                              background: Container(
                                color: Colors.red,
                                child: const Icon(Icons.delete),
                              ),
                              onDismissed: (DismissDirection direction){
                                setState(() {
                                  dbHelper!.delete(snaphsot.data![index].id!);
                                  noteList=dbHelper!.getNotesList();
                                  snaphsot.data!.remove(snaphsot.data![index]);
                                });
                              },
                              key: ValueKey<int>(snaphsot.data![index].id!),
                              child: Card(
                                child: ListTile(
                                  // contentPadding: const EdgeInsets.all(0),
                                  title: Text(snaphsot.data![index].title.toString()),
                                  subtitle: Text(snaphsot.data![index].description.toString()),
                                  trailing: Text(snaphsot.data![index].age.toString()),
                                ),
                              ),
                            ),
                          );
                        } );

                  }else{
                    return const CircularProgressIndicator();
                  }
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          dbHelper!.insert(NotesModel(
              title: 'four', age: 25, description: 'this is my first sql app',
              email: 'binaypanjiyarrju66688@gmail.com')
          ).then((value) {
            print('data is added');
            setState(() {
              noteList=dbHelper!.getNotesList();
            });
          }
          ).onError((error, stackTrace) {
            print(error.toString());
          });
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
