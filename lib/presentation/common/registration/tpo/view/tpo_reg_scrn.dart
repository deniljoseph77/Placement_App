import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/view/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:placement_app/presentation/tpo/tpohomescreen/view/tpohomescreen_view.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/global_text_styles.dart';
import '../../../../../global_widget/textformfield/mytextformfiled.dart';
import '../controller/tpo_register_controller.dart';

class TpoRegistration extends StatefulWidget {
  const TpoRegistration({super.key});

  @override
  State<TpoRegistration> createState() => _TpoRegistrationState();
}

class _TpoRegistrationState extends State<TpoRegistration> {
  var usernamControl = TextEditingController();
  var nameControl = TextEditingController();
  var phoneControl = TextEditingController();
  var mailControl = TextEditingController();
  var passControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  controller: usernamControl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldScreen(
                  prefixIcon: Icon(Icons.person_2_rounded),
                  hintText: 'Name',
                  labelText: "Name",
                  controller: nameControl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldScreen(
                  prefixIcon: Icon(Icons.phone_android),
                  hintText: 'Phone Number',
                  labelText: "Phone number",
                  controller: phoneControl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldScreen(
                  prefixIcon: Icon(Icons.mail),
                  hintText: 'Email',
                  labelText: "Email",
                  controller: mailControl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldScreen(
                  prefixIcon: Icon(Icons.visibility_off),
                  hintText: 'Password',
                  labelText: "password",
                  controller: passControl,
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    onPressed: () {
                      Provider.of<TpoRegisterController>(context, listen: false)
                          .onRegister(
                        context,
                        usernamControl.text,
                        nameControl.text,
                        phoneControl.text,
                        mailControl.text,
                        passControl.text,
                      );
                    },
                    minWidth: width * .5,
                    height: width * .15,
                    color: ColorTheme.darkClr,
                    textColor: ColorTheme.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GLTextStyles.labeltxt24,
                      ),
                    )),
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
      ),
    );
  }
}
