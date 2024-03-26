import 'dart:developer';

import '../../../../helper/api_helper.dart';

class CompanyRegisterService {
  static postCompanyregister(Map<String, dynamic> data) async{
    try {
      var decodedData =
          await ApiHelper.postData(endPoint: "company/signup/", body: data);
      if (decodedData["status"] == 1) {
        log("CompanyRegisterService>postCompanyregister>success");
        return decodedData;
      } else {
        log("${decodedData["status"]}");
        log("CompanyRegisterService>postCompanyregister>failed ");
        return decodedData;
      }
    } catch (e) {
      log("$e");
    }
  }
  
}