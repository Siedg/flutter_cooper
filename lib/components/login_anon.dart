import 'package:flutter/material.dart';
import 'package:flutter_cooper/constants.dart';

class LoginAnon extends StatelessWidget {
  final bool login;
  final Function press;
  const LoginAnon({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
            "Login Anonymously",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}