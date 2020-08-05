import 'package:flutter/material.dart';
import 'package:flutter_cooper/constants.dart';
import 'dart:io' show Platform;

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double textFieldWidth;
    if (Platform.isWindows) {
      textFieldWidth = size.width * 0.4;
    } else if (Platform.isAndroid) {
      textFieldWidth = size.width * 0.8;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: textFieldWidth,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}