import 'dart:developer';

import 'package:placement_app/repository/helper/api_helper.dart';

class HomeScreenService {
  static Future<dynamic> fetchStudentApplication(header) async {
    log("HomeScreenService -> started");
    try {
      var decodedData = await ApiHelper.getData(endPoint: "company/applications/", header: header);
      return decodedData;
    } catch (e) {
      log("$e");
    }
  }
}
