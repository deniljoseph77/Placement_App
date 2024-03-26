import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:placement_app/config/app_config.dart';
import 'package:placement_app/core/utils/app_utils.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:placement_app/repository/api/tpo/tpo_login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TPOLoginController extends ChangeNotifier {
  bool visibility = true;
  late SharedPreferences sharedPreferences;

  Future onLogin(String username, String password, BuildContext context) async {
    log("TPOTPOLoginController -> started");
    var data = {"username": username, "password": password};
    TPOLoginService.postTPOLoginData(data).then((value) {
      log("posTPOLogindata() -> ${value["status"]}");
      if (value["status"] == 1) {
        log("token -> ${value["token"]}");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TPOBottomNavigationScreen()));
      } else {
        var message = value["non_field_errors"];
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }

  void storeLoginData(loginReceivedData) async {
    log("storeLoginData()");
    sharedPreferences = await SharedPreferences.getInstance();
    String storeData = jsonEncode(loginReceivedData);
    sharedPreferences.setString(AppConfig.loginDataKey, storeData);
  }

  storeUserToken(resData) async {
    log("StoreUserToken");
    sharedPreferences = await SharedPreferences.getInstance();
    String dataUser = json.encode(resData["token"]);
    sharedPreferences.setString(AppConfig.token, dataUser);
  }

  void iconPressed() {
    visibility = !visibility;
    notifyListeners();
  }
}
