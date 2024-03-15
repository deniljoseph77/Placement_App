 import 'package:flutter/material.dart';

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
            TextFormField(
              controller: uname_cntrl,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: 'username',
                  labelText: 'username'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
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
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  labelText: 'password'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
