import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginwithfirebase/postScreen.dart';
import 'package:loginwithfirebase/round_button.dart';
import 'package:loginwithfirebase/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginwithfirebase/utils.dart';
import 'loginwithphonenumber.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _formKey =GlobalKey<FormState>();
  final emailController =TextEditingController();
  final passwordController =TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  void login(){
    setState(() {
      loading = true;
    });
    _auth.signInWithEmailAndPassword(email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value) {
      Utils().ToastMessage(value.user!.email.toString());
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>PostScreen())
      );
      setState(() {
        loading = false;
      });

    }).onError((error, stackTrace) {
      debugPrint(error.toString());
     Utils().ToastMessage(error.toString());
      setState(() {
        loading = false;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold))),
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
              RoundButton(
                title: 'Login',
              loading: loading,
              onTap: (){
                if(_formKey.currentState!.validate()){
                  login();
                }
              },
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder:(context)=>SignUpScreen() )
                    );
                  }, child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold)),)
                ],
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>LoginWithPhoneNumber() ));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: Center(

                    child: Text('Login with phone'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
