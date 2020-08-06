import 'package:flutter/material.dart';
import 'package:flutter_cooper/Screens/Signup/components/background.dart';
import 'package:flutter_cooper/Screens/Signup/components/or_divider.dart';
import 'package:flutter_cooper/Screens/Signup/components/social_icon.dart';
import 'package:flutter_cooper/components/already_have_an_account_acheck.dart';
import 'package:flutter_cooper/components/rounded_button.dart';
import 'package:flutter_cooper/components/rounded_input_field.dart';
import 'package:flutter_cooper/Screens/Login/login_screen.dart';


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
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/icons/signup.png',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Email',
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: 'Password',
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccounCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.png',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.png',
                  press: () {},
                )
              ],
            )
          ],
        ),
      )
    );
  }
}