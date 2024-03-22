import 'package:flutter/material.dart';
import 'package:placement_app/global_widget/textformfield/mytextformfiled.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFieldScreen(
              hintText: "Name",
              labelText: "Name",
            ),
            TextFieldScreen(
              hintText: "Phone Number",
              labelText: "Phone Number",
            ),
            TextFieldScreen(
              hintText: "Email",
              labelText: "Email",
            ),
            SizedBox(height: 20,),


            Padding(
              padding: EdgeInsets.only(right: 240,),
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.upload),
                  label: Text("Add Resume")),
            )
          ],
        ),
      ),
    );
  }
}
