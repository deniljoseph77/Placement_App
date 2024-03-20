import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/controller/login_controller.dart';
import 'package:placement_app/presentation/common/signup_screen/controller/signup_controller.dart';
import 'package:placement_app/presentation/common/signup_screen/view/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => SignupController()),
    ChangeNotifierProvider(create: (context) => LoginController())
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
