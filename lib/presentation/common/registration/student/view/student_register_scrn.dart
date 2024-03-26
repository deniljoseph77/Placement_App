import 'package:flutter/material.dart';
import '../../../../../global_widget/global_meterial_btn.dart';
import '../../../../../global_widget/textformfield/mytextformfiled.dart';
import '../../../../students/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import '../../../login_screen/view/login_screen.dart';

import '../../../../../core/constants/color_constants.dart';

class StudentRegister extends StatelessWidget {
  const StudentRegister({super.key});

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
                height: 5,
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
                hintText: 'First Name',
                labelText: "First Name",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.person_2_rounded),
                hintText: 'Last Name',
                labelText: "Last Name",
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
                width: width*.5,
                route: BottomNavigationScreen(),
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
                      TextSpan(text: "Already registered?"),
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
