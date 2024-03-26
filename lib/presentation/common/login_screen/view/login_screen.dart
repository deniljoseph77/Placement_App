import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/controller/login_controller.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../global_widget/global_meterial_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Here!",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF568896)),
            ),

            SizedBox(
              height: 30,
            ),
            //Title(color: Colors.white10, child: Text("Login here!",style: TextStyle(fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'username',
                    labelText: 'username'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Consumer<LoginController>(
                  builder: (context, loginController, _) {
                return TextFormField(
                  obscureText: loginController.visibility,
                  obscuringCharacter: '*',
                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {
                            loginController.iconPressed();
                          },
                          icon: Icon(loginController.visibility == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Password',
                      labelText: 'password'),
                );
              }),
            ),
            SizedBox(
              height: 20,
            ),
            GLMetrialButton(
              text: "Login",
              color: ColorTheme.darkClr,
              txtClr: ColorTheme.white,
              height: width * .15,
              width: width * .5,
              route: LoginScreen(),
            ),
            SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
