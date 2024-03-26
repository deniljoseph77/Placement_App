import 'package:flutter/material.dart';

class TPOLoginController extends ChangeNotifier {
  bool visibility = true;

  void iconPressed() {
    visibility = !visibility;
    notifyListeners();
  }
}
