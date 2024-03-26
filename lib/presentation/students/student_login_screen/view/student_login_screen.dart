import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/global_text_styles.dart';
import '../controller/student_login_controller.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({super.key});

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Here!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF568896)),
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
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'username',
                    labelText: 'username'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Consumer<StudentLoginController>(builder: (context, loginController, _) {
                return TextFormField(
                  obscureText: loginController.visibility,
                  obscuringCharacter: '*',
                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {
                            loginController.iconPressed();
                          },
                          icon: Icon(loginController.visibility == true ? Icons.visibility_off : Icons.visibility)),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Password',
                      labelText: 'password'),
                );
              }),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Provider.of<StudentLoginController>(context, listen: false)
                    .onLogin(usernameController.text.trim(), passwordController.text.trim(), context);
              },
              minWidth: width * .5,
              height: width * .15,
              color: ColorTheme.darkClr,
              textColor: ColorTheme.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Login",
                  style: GLTextStyles.labeltxt24,
                ),
              ),
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
