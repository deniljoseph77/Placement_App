import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/signup_screen/view/signup_screen.dart';
import 'package:placement_app/presentation/students/homescreen/view/home_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
