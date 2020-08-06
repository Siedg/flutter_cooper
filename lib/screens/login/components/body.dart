import 'package:flutter/material.dart';
import 'package:flutter_cooper/screens/signup/components/or_divider.dart';
import 'package:flutter_cooper/services/auth.dart';
import 'package:flutter_cooper/components/already_have_an_account_acheck.dart';
import 'package:flutter_cooper/components/login_anon.dart';
import 'package:flutter_cooper/components/rounded_button.dart';
import 'package:flutter_cooper/components/rounded_input_field.dart';
import 'package:flutter_cooper/components/rounded_password_field.dart';
import 'background.dart';
import 'package:flutter_cooper/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final AuthService _auth = AuthService();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/icons/login.png',
              height: size.height * 0.35
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccounCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    }
                  ),
                );
              },
            ),
            OrDivider(),
            LoginAnon(
              press: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('Siging in error');
                } else {
                  print('Signed in');
                  print(result.id);
                }
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) {
//                      return null;
//                    }
//                  ),
//                );
              },
            ),
          ],
        ),
      ),
    );
  }
}