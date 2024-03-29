import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/registration/company/controller/company_register_controller.dart';
import 'package:placement_app/presentation/common/registration/student/controller/student_register_controller.dart';
import 'package:placement_app/presentation/common/registration/tpo/controller/tpo_register_controller.dart';
import 'package:placement_app/presentation/common/splash_screen/view/splash_screen.dart';
import 'package:placement_app/presentation/company/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/company/company_login_screen/controller/company_login_controller.dart';
import 'package:placement_app/presentation/company/home_screen/controller/home_screen_controller.dart';
import 'package:placement_app/presentation/students/bottom_navigation_screen/controller/student_bottom_navigation_controller.dart';
import 'package:placement_app/presentation/students/student_login_screen/controller/student_login_controller.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/tpo/tpo_login_screen/controller/tpo_login_controller.dart';
import 'package:placement_app/presentation/tpo/tpo_manager_user_screen/controller/tpo_manage_student_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => CompanyLoginController()),
    ChangeNotifierProvider(create: (context) => StudentLoginController()),
    ChangeNotifierProvider(create: (context) => TPOLoginController()),
    ChangeNotifierProvider(
        create: (context) => StudentBottomNavigationController()),
    ChangeNotifierProvider(create: (context) => CompanyBottomController()),
    ChangeNotifierProvider(
        create: (context) => TPOBottomNavigationController()),
    ChangeNotifierProvider(create: (context) => StudentRegController()),
    ChangeNotifierProvider(create: (context) => TpoRegisterController()),
    ChangeNotifierProvider(create: (context) => CompanyRegisterController()),
    ChangeNotifierProvider(create: (context) => TPOManageStudentController()),
    // ChangeNotifierProvider(create: (context) => ),
    ChangeNotifierProvider(create: (context) => HomeScreenController())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
