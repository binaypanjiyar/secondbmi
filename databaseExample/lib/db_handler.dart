import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'notes.dart';
import 'dart:io' as io;

class DBHelper{
  static Database? _db;
  Future<Database?> get db async{
    if(_db!=null){
      return _db;
    }
    _db=await initDatabase();
    return _db;
  }
  initDatabase()async{
io.Directory documentDirectory = await getApplicationDocumentsDirectory();
String path = join(documentDirectory.path,'notes.db');
var db = await openDatabase(path, version: 1,onCreate: _onCreate);
return db;
  }
  _onCreate(Database db,int version)async{
    await db.execute(
      "CREATE TABLE notes(id INTEGER PRIMARY KEY AUTOINCREMENT ,title TEXT NOT NULL,age INTEGER NOT NULL,description TEXT NOT NULL,email TEXT NOT NULL)",
    );
  }
  Future<NotesModel>insert(NotesModel notesModel)async{
    var dbClint = await db;
    await dbClint!.insert('notes', notesModel.toMap());
    return notesModel;
  }
Future<List<NotesModel>> getNotesList () async{
  var dbClint = await db;
  final List<Map<String,Object?>> queryResult = await dbClint!.query('notes');
  return queryResult.map((e) => NotesModel.fromMap(e)).toList();
}
Future<int> delete(int id)async{
  var dbClint = await db;
  return await dbClint!.delete('notes',
  where: 'id=?',
  whereArgs: [id]
  );
}
  Future<int> update(NotesModel notesModel)async{
    var dbClint = await db;
    return await dbClint!.update('notes',
        notesModel.toMap(),
      where: 'id=?',
      whereArgs: [notesModel.id]
    );
  }
}