import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/home_screen/view/company_homescreen.dart';
import 'package:placement_app/presentation/company/postjob_screen/view/postjob_screen.dart';

import 'package:placement_app/presentation/tpo/tpohomescreen/view/tpohomescreen_view.dart';

class bottomcontroller with ChangeNotifier {
  int selectedindex = 0;
  void onitemtap(index) {
    selectedindex = index;
    notifyListeners();
  }

  List<Widget> screens = [
    CompanyHomeScreen(),
    PostJobScreen(),
    TPOHomeScreen()
  ];
}
