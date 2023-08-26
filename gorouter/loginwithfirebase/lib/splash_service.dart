import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginwithfirebase/postScreen.dart';
import 'cloud_databse/firestore_list_screen.dart';
import 'login_screen.dart';
class Splash_Sercive{
  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if(user!=null){
      Timer(const Duration(seconds: 2),
              ()=>Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>FireStoreScreen()))
      );
    }else {
      Timer(const Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>LoginScreen()))
      );
    }
  }
}
