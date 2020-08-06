import 'package:flutter/material.dart';
import 'package:flutter_cooper/models/user.dart';
import 'package:flutter_cooper/screens/home/home_screen.dart';
import 'package:flutter_cooper/screens/login/login_screen.dart';
import 'package:flutter_cooper/screens/signup/signup_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print("User: $user");

    if (user == null) {
      return LoginScreen();
    } else {
      return Home();
    }
  }
}