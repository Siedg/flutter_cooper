import 'package:flutter/material.dart';
import 'package:flutter_cooper/models/user.dart';
import 'package:flutter_cooper/screens/home/home_screen.dart';
import 'package:flutter_cooper/screens/login/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    print("User: ");
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}