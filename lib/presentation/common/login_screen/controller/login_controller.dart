import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  bool visibility = true;

  void iconPressed() {
    visibility = !visibility;
    notifyListeners();
  }
}
