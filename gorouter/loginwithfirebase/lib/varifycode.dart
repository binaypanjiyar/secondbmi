import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/postScreen.dart';
import 'package:loginwithfirebase/round_button.dart';
import 'package:loginwithfirebase/utils.dart';
class VerifyCodeScreen extends StatefulWidget {
  final verificationID;
  const VerifyCodeScreen({super.key,required this.verificationID});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  bool loading =false;
  final auth = FirebaseAuth.instance;
  final verificationCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('verify'),
      ),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: verificationCodeController,
              decoration: InputDecoration(
                  hintText: '6 digit code'
              ),
            ),
            SizedBox(height: 80,),
            RoundButton(title: 'Verify',loading: loading, onTap: () async{
              setState(() {
                loading =true;
              });
              final credential = PhoneAuthProvider.credential(
                  verificationId: widget.verificationID,
                  smsCode: verificationCodeController.text.toString()
              );
              try{
                await auth.signInWithCredential(credential);
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>
                        PostScreen() ));

              }catch(e){
                setState(() {
                  loading =true;
                });
                Utils().ToastMessage(e.toString());
              }
            })
          ],
        ),

      ),
    );
  }
}
