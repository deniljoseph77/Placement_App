import 'package:flutter/material.dart';
import 'package:placement_app/core/constants/global_text_styles.dart';
void main (){
  runApp(MaterialApp(home: SplashScreen(),));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(height: 125,"asset/logo/placementlogo.png"),
            Text("Placement & Training App",style: GLTextStyles.labeltxtBlk18,)
          ],
        ),
      ),
    );
  }
}
