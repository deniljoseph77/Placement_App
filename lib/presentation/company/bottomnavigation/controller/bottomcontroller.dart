import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/home_screen/view/company_homescreen.dart';
import 'package:placement_app/presentation/company/postjob_screen/view/postjob_screen.dart';

import '../../../tpo/tpo_manager_user_screen/view/tpo_manage_student.dart';

class CompanyBottomController with ChangeNotifier {
  int selectedIndex = 0;

  void onItemTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> screens = [
    CompanyHomeScreen(),
    PostJobScreen(),
    TPOManageStudentScreen()
  ];
}
