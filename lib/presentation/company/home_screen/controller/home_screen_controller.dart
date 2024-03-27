import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:placement_app/core/utils/app_utils.dart';
import 'package:placement_app/repository/api/company/home_screen/model/student_application_model.dart';
import 'package:placement_app/repository/api/company/home_screen/service/home_screen_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenController extends ChangeNotifier {
  StudentApplicationModel studentApplicationModel = StudentApplicationModel();
  late SharedPreferences sharedPreferences;
  bool isLoading = false;
  late Map<String, dynamic> header;

  fetchStudentApplication(context) async {
    isLoading = true;
    notifyListeners();
    log("HomeScreenController -> fetchStudentApplication() started");
    HomeScreenService.fetchStudentApplication().then((value) {
      log("fetchStudentApplication() -> status -> ${value["status"]}");
      if (value["status"] == 1) {
        log("data -> ${value["data"]}");
        studentApplicationModel = StudentApplicationModel.fromJson(value);
        log("model work aayada");
        isLoading = false;
      } else {
        AppUtils.oneTimeSnackBar("Error", context: context);
      }
      notifyListeners();
    });
  }
}
