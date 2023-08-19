import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  String _savedText = '';

  @override
  void initState() {
    super.initState();
    _loadSavedText(); // Load saved text when the app starts
    saveget();
  }

  // Function to save text using shared preferences
  _saveText(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_text', text);
  }

  // Function to load saved text from shared preferences
  _loadSavedText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('saved_text') ?? ''; // Load saved text or empty string
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Saved Text:'),
            Text(
              _savedText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter text to save'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _saveText(_controller.text); // Save the entered text
                _loadSavedText(); // Reload to display the updated saved text
                _controller.clear(); // Clear the input field
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void saveget() {}
}
