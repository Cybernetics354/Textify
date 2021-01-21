import 'package:flutter/material.dart';
import 'package:textify/views/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Textify",
      home: SplashScreenMainView(),
    );
  }
}