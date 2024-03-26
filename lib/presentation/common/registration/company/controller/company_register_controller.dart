import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:placement_app/config/app_config.dart';
import 'package:placement_app/repository/api/common/registration/company_service/company_service.dart';

import '../../../../../core/utils/app_utils.dart';
import '../../../login_screen/view/login_screen.dart';

class CompanyRegisterController extends ChangeNotifier {
  void onRegister(
      BuildContext context,
      File? image,
      String username,
      String name,
      String descrption,
      String industry,
      String phone,
      String mail,
      String location,
      String year,
      String website,
      String pass) {
    var imageUrl = {"http://10.11.0.135:8000" + image!.path};
    var data = {
      "name": name,
      "description": descrption,
      "industry": industry,
      "email_address": mail,
      "phone_no": phone,
      "Headquarters": location,
      "founded": year,
      "logo": imageUrl,
      "website": website,
      "username": username
    };
    CompanyRegisterService.postCompanyregister(data).then((resData) {
      log("onRegister ${resData["status"]}");
      if (resData["status"] == 1) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else {
        var message = resData["msg"];
        AppUtils.oneTimeSnackBar(message, context: context);
      }
    });
  }
}

// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:placement_app/config/app_config.dart';
// import '../../../../../core/utils/app_utils.dart';
// import '../../../login_screen/view/login_screen.dart';

// class CompanyRegisterController extends ChangeNotifier {
//   void onRegister(
//     BuildContext context,
//     File? image,
//     String username,
//     String name,
//     String description,
//     String industry,
//     String phone,
//     String mail,
//     String location,
//     String year,
//     String website,
//     String pass,
//   ) async {
//     if (image == null) {
//       // Handle the case when no image is selected
//       return;
//     }

//     // Create a multipart request
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse('http://10.11.0.135:8000'),
//     );

//     // Add the image file to the request
//     request.files.add(
//       await http.MultipartFile.fromPath(
//         'logo', // Name of the field in the form
//         image.path, // Path to the image file
//       ),
//     );

//     // Add other form fields
//     request.fields.addAll({
//       'name': name,
//       'description': description,
//       'industry': industry,
//       'email_address': mail,
//       'phone_no': phone,
//       'Headquarters': location,
//       'founded': year,
//       'website': website,
//       'username': username,
//     });

//     try {
//       var response = await request.send();
//       if (response.statusCode == 200) {
//         // Successful upload
//         var responseData = await response.stream.bytesToString();
//         var resData = json.decode(responseData);
//         print("onRegister ${resData["status"]}");
//         if (resData["status"] == 1) {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()),
//           );
//         } else {
//           var message = resData["msg"];
//           AppUtils.oneTimeSnackBar(message, context: context);
//         }
//       } else {
//         // Handle error response
//         print('Error: ${response.reasonPhrase}');
//         AppUtils.oneTimeSnackBar('Failed to upload image',
//             context: context);
//       }
//     } catch (e) {
//       // Handle error
//       print('Exception during image upload: $e');
//       AppUtils.oneTimeSnackBar('Failed to upload image',
//           context: context);
//     }
//   }
// }
