import 'package:flutter/material.dart';
import 'package:flutter_cooper/constants.dart';
import 'dart:io' show Platform;

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double buttonWidth;

    if (Platform.isWindows) {
      buttonWidth = size.width * 0.4;
    } else if (Platform.isAndroid) {
      buttonWidth = size.width * 0.8;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: buttonWidth,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}