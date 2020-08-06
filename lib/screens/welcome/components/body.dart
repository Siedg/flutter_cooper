import 'package:flutter/material.dart';
import 'package:flutter_cooper/components/rounded_button.dart';
import 'package:flutter_cooper/constants.dart';
import 'background.dart';
import 'package:flutter_cooper/Screens/Login/login_screen.dart';
import 'package:flutter_cooper/Screens/Signup/signup_screen.dart';

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
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      )
    );
  }
}