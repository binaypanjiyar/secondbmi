import 'package:flutter/material.dart';
import 'package:loginwithfirebase/splash_service.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  Splash_Sercive splash_sercive =Splash_Sercive();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash_sercive.isLogin(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Firebase',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
