import 'package:flutter/material.dart';
bool isLogin = true;

class LoginOrRegisterButton extends StatelessWidget {
  const LoginOrRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(isLogin ? 'Register ' : 'Login'),
      );
  }
}