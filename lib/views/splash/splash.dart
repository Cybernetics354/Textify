import 'package:flutter/material.dart';

class SplashScreenMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Textify"),
          ],
        ),
      ),
    );
  }
}