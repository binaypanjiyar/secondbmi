// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginwithfirebase/utils.dart';
// import 'package:fluttertoast/fluttertoast.dart';

import 'login_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool loading = false;
  final _formKey =GlobalKey<FormState>();
  final emailController =TextEditingController();
  final passwordController =TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Center(child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration:const InputDecoration(
                          hintText: 'Email',
                          // helperText: 'Enter Email e.g john@gmail.com',
                          prefixIcon: Icon(Icons.email_outlined)
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      controller: passwordController,
                      decoration:const InputDecoration(
                          hintText: 'Password',
                          // helperText: 'Enter Password e.g Asj134a',
                          prefixIcon: Icon(Icons.lock_open)
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter Password';
                        }
                        return null;
                      },
                    ),
                  ],
                )
            ),
            const SizedBox(height: 50,),
            RoundButton(title: 'Sign Up',
              loading:loading ,
              onTap: (){
                if(_formKey.currentState!.validate()){
                  setState(() {
                    loading = true;
                  });
                _auth.createUserWithEmailAndPassword(
                    email: emailController.text.toString(),
                    password: passwordController.text.toString()).then((value) {
                  setState(() {
                    loading = false;
                  });

                }).onError((error, stackTrace) {
                  Utils().ToastMessage(error.toString());
                  setState(() {
                    loading = false;
                  });

                });
                }
              },
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account"),
                TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder:(context)=>LoginScreen() )
                  );
                }, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold),),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
