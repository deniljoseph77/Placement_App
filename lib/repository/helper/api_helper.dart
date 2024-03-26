import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../config/app_config.dart';

class ApiHelper {
  static getData({
    required String endPoint,
    Map<String, String>? header,
  }) async {
    log("ApiHelper -> getData()");
    final url = Uri.parse(AppConfig.baseurl + endPoint);
    try {
      var response = await http.get(url);
      log("Api Called => status code=${response.statusCode}");
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        log(decodedData.toString());
        return decodedData;
      } else {
        log("Else Condition >> Api failed");
        return null;
      }
    } catch (e) {
      log("$e");
    }
  }

  static postData({
    required String endPoint,
    Map<String, String>? header,
    required Map<String, dynamic> body,
  }) async {
    log("ApiHelper -> postData()");
    log("body -> $body");
    final url = Uri.parse(AppConfig.baseurl + endPoint);
    try {
      var response = await http.post(url, body: body);
      log("Api Called -> status code:${response.statusCode}");
      if (response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);
        return decodedData;
      } else {
        log("Else Condition -> Api failed");
        var data = response.body;
        var decodedData = jsonDecode(data);
        return decodedData;
      }
    } catch (e) {
      log("$e");
    }
  }
}