import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/view/login_screen.dart';

class module_screen extends StatefulWidget {
  const module_screen({super.key});

  @override
  State<module_screen> createState() => _module_screenState();
}

class _module_screenState extends State<module_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ports",
              style: TextStyle(color: Color(0xFF568896), fontSize: 28),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
              },
              child: Text(
                "Student",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              shape: StadiumBorder(),
              color: Colors.white10,
              minWidth: 200,
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text(
                "Tpo",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              minWidth: 200,
              color: Colors.white10,
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text(
                "Companies",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              minWidth: 200,
              color: Colors.white10,
            )
          ],
        ),
      ),
    );
  }
}
