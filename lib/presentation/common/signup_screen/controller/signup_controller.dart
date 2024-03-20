import 'package:flutter/material.dart';

class SignupController extends ChangeNotifier {
  String? moduleSelected;

  void setModule(String selectedModule) {
    moduleSelected = selectedModule;
    notifyListeners();
  }
}
