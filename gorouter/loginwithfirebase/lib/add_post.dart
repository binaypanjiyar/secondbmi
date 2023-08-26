import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/round_button.dart';
import 'package:loginwithfirebase/utils.dart';
class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  bool loading = false;
  final postController = TextEditingController();
  //creating a table in firebase which name is Post
  final databseRef = FirebaseDatabase.instance.ref('Post');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
const SizedBox(
  height: 30,
),
            TextFormField(
              controller: postController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'What is in your mind',
                border: OutlineInputBorder(

                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
              title: 'Add',
              loading: loading,
              onTap: (){
                setState(() {
                  loading = true;
                });
                String id = DateTime.now().microsecondsSinceEpoch.toString();
              databseRef.child(id).set({
                'title':postController.text.toString(),
                'id':id
                // DateTime.now().microsecondsSinceEpoch.toString()
              }).then((value) {
                Utils().ToastMessage('Post Added');
                Navigator.pop(context);
                setState(() {
                  loading = false;
                });
              }).onError((error, stackTrace){
                Utils().ToastMessage(error.toString());
                setState(() {
                  loading = false;
                });
              });
              },
            )
          ],
        ),
      ),
    );
  }
}
