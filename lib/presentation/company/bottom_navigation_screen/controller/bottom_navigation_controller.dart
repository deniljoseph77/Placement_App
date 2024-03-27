import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/home_screen/view/company_homescreen.dart';
import 'package:placement_app/presentation/company/postjob_screen/view/postjob_screen.dart';

import '../../jobs_posted/view/jobs_posted_screen.dart';

class CompanyBottomController with ChangeNotifier {
  int selectedIndex = 0;

  void onItemTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> screens = [
    CompanyHomeScreen(),
    PostJobScreen(),
    JobsPostedScreen()
  ];
}
