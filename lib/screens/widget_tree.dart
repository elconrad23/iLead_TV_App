import 'package:flutter/material.dart';
import 'package:asdeployment/screens/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:asdeployment/screens/login_register_page.dart';
import 'package:asdeployment/screens/profile.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot)
      {
        if(snapshot.hasData){
          return Profile();
        }else{
          return const LoginPage();
        }
      },
    );
  }
}