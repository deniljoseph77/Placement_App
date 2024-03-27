import 'dart:developer';

import 'package:placement_app/core/utils/app_utils.dart';
import 'package:placement_app/repository/helper/api_helper.dart';

class ApplyJobsService {
  static Future<dynamic> fetchApplyJobs() async {
    log("ApplyJobsService -> started");
    try {
      var decodedData = await ApiHelper.getData(
          endPoint: "student/jobs/", header: ApiHelper.getApiHeader(access: await AppUtils.getAccessKey()));
      return decodedData;
    } catch (e) {
      log("$e");
    }
  }
}
