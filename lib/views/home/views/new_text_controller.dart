import 'package:flutter/material.dart';
import 'package:textify/statics.dart';
import 'package:textify/widgets/dialogs.dart';
import 'package:textify_core/textify_core.dart';

class NewTextController {
  TextEditingController contentController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  final _navigatorState = Statics.navigatorState;

  void dispose() {
    contentController?.dispose();
    titleController?.dispose();
    descriptionController?.dispose();
  }

  save() async {
    try {
      Dialogs.showLoadingDialog();
      TextModel _model = TextModel.compose(titleController.text, descriptionController.text, contentController.text);
      await TextStoreRepository.insert(_model);
      _navigatorState.currentState.popUntil((route) => route.isFirst);
    } catch (e) {
      _navigatorState.currentState.pop();
    }
  }
}