import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/round_button.dart';
import 'package:loginwithfirebase/utils.dart';
import 'package:loginwithfirebase/varifycode.dart';
class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});
  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}
class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  bool loading =false;
  final auth = FirebaseAuth.instance;
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Mobile Number'),
      ),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: phoneNumberController,
              decoration: const InputDecoration(
                hintText: '+977 9817866688'
              ),
            ),
            const SizedBox(height: 80,),
            RoundButton(title: 'Login',loading: loading, onTap: (){
              setState(() {
                loading = true;
              });
              auth.verifyPhoneNumber(
                phoneNumber: phoneNumberController.text,
                  verificationCompleted: (_){
                    setState(() {
                      loading = false;
                    });

                  },
                  verificationFailed: (e){
                  Utils().ToastMessage(e.toString());
                  },
                  codeSent: (String verificationId, int? token){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>
                            VerifyCodeScreen(verificationID: verificationId,) ));
                    setState(() {
                      loading = false;
                    });

                  },
                  codeAutoRetrievalTimeout: (e){
                  Utils().ToastMessage(e.toString());
                  setState(() {
                    loading = false;
                  });

                  });
            })
          ],
        ),

      ),
    );
  }
}
