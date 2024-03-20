import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/controller/login_controller.dart';
import 'package:placement_app/presentation/common/signup_screen/view/signup_screen.dart';
import 'package:provider/provider.dart';

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
    return Scaffold(
      body: Center(
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
              child: Consumer<LoginController>(builder: (context, loginController, _) {
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
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            SizedBox(
              height: 9,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: RichText(
                  text: TextSpan(style: TextStyle(color: Colors.black, fontSize: 16), children: [
                TextSpan(text: "Dont have an account?  "),
                TextSpan(text: "signup", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF568896)))
              ])),
            )
          ],
        ),
      ),
    );
  }
}
