import 'dart:io' show Platform;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_cooper/Screens/Welcome/welcome_screen.dart';
import 'constants.dart';
//import 'package:window_size/window_size.dart' as window_size;


void main() => runApp(MyApp());

//void main() {
//  window_size.getWindowInfo().then((window) {
//    if (window.screen != null) {
//      final screenFrame = window.screen.visibleFrame;
//      final width = math.max((screenFrame.width / 2).roundToDouble(), 800.0);
//      final height = math.max((screenFrame.width / 2).roundToDouble(), 800.0);
//      final left = ((screenFrame.width - width) / 2).roundToDouble();
//      final top = ((screenFrame.width - height) / 3).roundToDouble();
//      final frame = Rect.fromLTWH(left, top, width, height);
//      window_size.setWindowFrame(frame);
//      window_size.setWindowTitle("Flutter for desktop");
//
//      if (Platform.isWindows) {
//        window_size.setWindowMinSize(Size(800,600));
//      }
//    }
//  });
//
//  runApp(new MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cooper Card',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}