import 'package:flutter/material.dart';
import 'package:textify/statics.dart';

class Dialogs {
  static showLoadingDialog() async {
    return await showDialog(
      context: Statics.navigatorState.currentState.overlay.context,
      builder: (context) {
        return Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    );
  }
}