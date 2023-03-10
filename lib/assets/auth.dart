import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/pages/login.dart';
import 'package:to_do_app/pages/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showloginpage = true;

  void toggler() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return login(showregisterpage: toggler);
    } else {
      return SignUp(showloginpage: toggler);
    }
  }
}
