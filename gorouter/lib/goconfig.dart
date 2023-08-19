import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home.dart';
import 'profile.dart';
import 'about.dart';
import 'contact.dart';
class MyAppRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
            name: 'home',
            path: '/',
            pageBuilder: (context, state){
              return MaterialPage(child: Home());
            }
        ),

        GoRoute(
            name: 'profile',
            path: '/profile',
            pageBuilder: (context, state){
              return MaterialPage(child: Profile());
            }
        ),
        GoRoute(
            name: 'about',
            path: '/about',
            pageBuilder: (context, state){
              return MaterialPage(child: About());
            }
        ),
        GoRoute(
            name: 'contactus',
            path: '/contact',
            pageBuilder: (context, state){
              return MaterialPage(child: Contact());
            }
        ),
      ]
  );
}