import 'package:flutter/material.dart';
import 'package:placement_app/core/utils/app_utils.dart';
import 'package:placement_app/repository/api/student/student_home/model/interview_model.dart';
import 'package:placement_app/repository/api/student/student_home/service/interview_service.dart';

class InterviewController extends ChangeNotifier {
  InterviewModel interviewModel = InterviewModel();
  
  fetchData(BuildContext context) {
    InterviewService.fetchData().then((data) {
      if (data["status" == 1]) {
        interviewModel = InterviewModel.fromJson(data);
      } else {
        AppUtils.oneTimeSnackBar("Error: data not found", context: context);
      }
      notifyListeners();
    });
  }
}
