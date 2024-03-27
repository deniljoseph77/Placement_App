import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:placement_app/core/utils/app_utils.dart';
import 'package:placement_app/repository/api/student/apply_jobs_screen/model/apply_jobs_model.dart';
import 'package:placement_app/repository/api/student/apply_jobs_screen/service/apply_jobs_service.dart';

class ApplyJobsController extends ChangeNotifier {
  ApplyJobsModel applyJobsModel = ApplyJobsModel();
  bool isLoading = false;

  fetchApplyJobs(context) async {
    isLoading = true;
    notifyListeners();
    log("ApplyJobsController -> fetchApplyJobs");
    ApplyJobsService.fetchApplyJobs().then((value) {
      log("ApplyJobsService.fetchApplyJobs() -> started");
      if (value["status"] == 1) {
        log("data -> ${value["status"]}");
        applyJobsModel = ApplyJobsModel.fromJson(value);
        isLoading = false;
      } else {
        AppUtils.oneTimeSnackBar("error", context: context);
      }
      notifyListeners();
    });
  }
}
