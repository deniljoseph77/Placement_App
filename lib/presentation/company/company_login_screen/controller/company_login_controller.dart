import 'package:flutter/material.dart';

class CompanyLoginController extends ChangeNotifier {
  bool visibility = true;

  void iconPressed() {
    visibility = !visibility;
    notifyListeners();
  }
}
