import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/controller/login_controller.dart';
import 'package:placement_app/presentation/common/signup_screen/controller/signup_controller.dart';
import 'package:placement_app/presentation/common/signup_screen/view/signup_screen.dart';
import 'package:placement_app/presentation/company/bottomnavigation/view/controller/bottomcontroller.dart';
import 'package:placement_app/presentation/students/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => SignupController()),
    ChangeNotifierProvider(create: (context) => LoginController()),
    ChangeNotifierProvider(create: (context) => BottomNavigationController()),
    ChangeNotifierProvider(create: (context) => bottomcontroller()),
    ChangeNotifierProvider(create: (context) => TPOBottomNavigationController())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
