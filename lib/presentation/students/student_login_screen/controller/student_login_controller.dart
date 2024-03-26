import 'package:flutter/material.dart';

class StudentLoginController extends ChangeNotifier {
  bool visibility = true;

  void iconPressed() {
    visibility = !visibility;
    notifyListeners();
  }
}
