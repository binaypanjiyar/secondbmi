import 'package:flutter/material.dart';
import 'project/routes/app_route_config.dart';
void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRouter().router.routeInformationParser,
      routerDelegate:MyAppRouter().router.routerDelegate ,
    );
  }
}
