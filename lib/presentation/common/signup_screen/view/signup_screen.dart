import 'package:flutter/material.dart';
import 'package:placement_app/global_widget/textformfield/mytextformfiled.dart';
import 'package:placement_app/presentation/common/login_screen/view/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) =>))
      //     }, icon: Icon(Icons.arrow_back_ios_new),),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SignUp",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldScreen(
              prefixIcon: Icon(Icons.person_2_rounded),
              hintText: 'Email',
              labelText: "email",
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldScreen(
              prefixIcon: Icon(Icons.visibility_off),
              hintText: 'Password',
              labelText: "password",
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldScreen(
              prefixIcon: Icon(Icons.phone_android),
              hintText: 'Phone Number',
              labelText: "Phone number",
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Register Here")),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
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
    );
  }
}
