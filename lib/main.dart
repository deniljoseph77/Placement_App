import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/get%20started%20scrn/get_started.dart';
import 'package:placement_app/presentation/common/login_screen/controller/login_controller.dart';
import 'package:placement_app/presentation/common/registration/company/controller/company_register_controller.dart';
import 'package:placement_app/presentation/common/registration/student/controller/student_register_controller.dart';
import 'package:placement_app/presentation/common/registration/tpo/controller/tpo_register_controller.dart';
import 'package:placement_app/presentation/company/bottomnavigation/controller/bottomcontroller.dart';
import 'package:placement_app/presentation/students/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => LoginController()),
    ChangeNotifierProvider(create: (context) => BottomNavigationController()),
    ChangeNotifierProvider(create: (context) => bottomcontroller()),
    ChangeNotifierProvider(create: (context) => TPOBottomNavigationController()),
    ChangeNotifierProvider(create: (context) => StudentRegController()),
    ChangeNotifierProvider(create: (context) => TpoRegisterController()),
    ChangeNotifierProvider(create: (context) => CompanyRegisterController()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
