import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:placement_app/repository/api/tpo/tpo_mange_student/model/tpo_manage_student_model.dart';
import 'package:placement_app/repository/api/tpo/tpo_mange_student/service/tpo_manage_student_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/app_utils.dart';

class TPOManageStudentController extends ChangeNotifier {
  late SharedPreferences sharedPreferences;
  late TpoManageStudentModel tpoManageStudentModel = TpoManageStudentModel();
  List<Datum>? myList = [];

  fetchStudentList(BuildContext context) async {
    log("TPOManageStudentController>>fetchStudentList");

    TPOManageStudentService.fetchData().then((resData) {
      log("$resData");
      if (resData["status"] == 1) {
        tpoManageStudentModel = TpoManageStudentModel.fromJson(resData["data"]);
        myList = tpoManageStudentModel.data;

        print(myList);
      } else {
        AppUtils.oneTimeSnackBar("Error: Data Not Found ", context: context);
      }
      notifyListeners();
    });
  }
}
