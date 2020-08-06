import 'package:flutter/material.dart';
import 'package:flutter_cooper/constants.dart';
import 'package:flutter_cooper/screens/home/components/body.dart';
import 'package:flutter_cooper/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person, color: Colors.white),
            label: Text(
              'logout',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onPressed: () async {
              await _auth.signOut();
//              MaterialPageRoute(
//                builder: (context) {
//                  return LoginScreen();
//                },
//              );
            },
          ),
        ],
      ),
      body: Body(),
    );
  }
}