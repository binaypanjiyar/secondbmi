import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_eg/pages/about.dart';
import 'package:go_router_eg/pages/contact_us.dart';
import 'package:go_router_eg/pages/home.dart';
import 'package:go_router_eg/pages/profile.dart';

class MyAppRouter {
GoRouter router = GoRouter(
  routes: [
    GoRoute(
        name: 'Profile',
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