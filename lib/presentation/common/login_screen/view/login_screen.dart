import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/signup_screen/view/signup_screen.dart';

void main() {
  runApp(MaterialApp(
    home: login_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  var uname_cntrl = TextEditingController();
  var password_cntrl = TextEditingController();
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                controller: uname_cntrl,
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
              child: TextFormField(
                obscureText: password,
                obscuringCharacter: '*',
                controller: password_cntrl,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (password == true) {
                              password = false;
                            } else {
                              password = true;
                            }
                          });
                        },
                        icon: Icon(password == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password',
                    labelText: 'password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),SizedBox(height: 9,),  TextButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));},
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(text: "Dont have an account?  "),
                        TextSpan(
                            text: "signup",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF568896)))
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
