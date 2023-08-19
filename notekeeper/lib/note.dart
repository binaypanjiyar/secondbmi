import 'dart:html';
class Note{
  int? _id;
  String _title='';
  String _description='';
  String _date='';
  int _priority=0;
  Note( this._title, this._description, this._date, this._priority);
  Note.withId(this._id, this._title, this._description, this._date, this._priority);
  String get title => _title;
  set title(String value) {
    if(value.length<=255) {
      _title = value;
    }
  }
  String get description => _description;
  set description(String value) {
    _description = value;
  }
  String get date => _date;
  set date(String value) {
    _date = value;
  }
  int get priority => _priority;
  set priority(int value) {
    if (value >= 1 && value <= 2) {
      _priority = value;
    }
  }
//convet a note object into a Map object
    Map<String, dynamic> toMap() {
      var map = Map<String, dynamic>();
      if (_id != null) {
        map['id'] = _id;
      }
      map['title'] = _title;
      map['description'] = _description;
      map['priority'] = _priority;
      map['date'] = _date;
      return map;
    }
  Note.fromMapObject(Map<String, dynamic> map)
  {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
  }