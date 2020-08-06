import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final double elevation;
  final List<Widget> actions;

  const CustomAppBar({
    Key key,
    this.title,
    this.backgroundColor,
    this.elevation,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: title,
      backgroundColor: backgroundColor,
      elevation: elevation,
      actions: actions,
    );
  }
}