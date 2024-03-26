import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/view/login_screen.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:placement_app/presentation/tpo/tpohomescreen/view/tpohomescreen_view.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../global_widget/global_meterial_btn.dart';
import '../../../../../global_widget/textformfield/mytextformfiled.dart';

class TpoRegistration extends StatelessWidget {
  const TpoRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Enter Valid Credentials",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.person_2_outlined),
                hintText: 'username',
                labelText: "username",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.person_2_rounded),
                hintText: 'Name',
                labelText: "Name",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.phone_android),
                hintText: 'Phone Number',
                labelText: "Phone number",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.mail),
                hintText: 'Email',
                labelText: "Email",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.visibility_off),
                hintText: 'Password',
                labelText: "password",
              ),
              SizedBox(
                height: 10,
              ),
              GLMetrialButton(
                text: "Register",
                color: ColorTheme.darkClr,
                txtClr: ColorTheme.white,
                height: width * .15,
                width: width * .5,
                route: TPOBottomNavigationScreen(),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                      TextSpan(text: "Already registered?  "),
                      TextSpan(
                          text: "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF568896)))
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
