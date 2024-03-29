import 'package:flutter/material.dart';
import 'package:flutter_cooper/screens/home/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to CooperCard',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              'assets/icons/chat.png',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      )
    );
  }
}