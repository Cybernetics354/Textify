import 'package:flutter/material.dart';
import 'package:textify/statics.dart';
import 'package:textify/theme.dart';
import 'package:textify/views/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Statics.navigatorState,
      title: "Textify",
      theme: MainTheme.lightTheme,
      darkTheme: MainTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashScreenMainView(),
    );
  }
}