import 'package:flutter/material.dart';
import 'package:flutter_cooper/screens/login/login_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginScreen(),
    );
  }
}