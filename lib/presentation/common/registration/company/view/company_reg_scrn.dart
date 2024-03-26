import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../global_widget/global_meterial_btn.dart';
import '../../../../../global_widget/image_icon_button.dart';
import '../../../../../global_widget/textformfield/mytextformfiled.dart';
import '../../../login_screen/view/login_screen.dart';

class CompanyRegistration extends StatefulWidget {
  const CompanyRegistration({super.key});

  @override
  State<CompanyRegistration> createState() => _CompanyRegistrationState();
}

class _CompanyRegistrationState extends State<CompanyRegistration> {
  File? image;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }


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
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.person_2_rounded),
                hintText: 'Company Name',
                labelText: "Company Name",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.phone_android),
                hintText: 'Description',
                labelText: "Description",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.location_city_outlined),
                hintText: 'Industry',
                labelText: "Industry",
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
                prefixIcon: Icon(Icons.location_city),
                hintText: 'Location',
                labelText: "Location",
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.date_range),
                hintText: 'Since',
                labelText: "Since",
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageIconButton(
                    width: width * .35,
                    height: size.height * .06,
                    onPressed: () => _getImage(ImageSource.camera),
                    icon: Icons.camera_alt_outlined,
                    label: 'Camera',
                  ),
                  ImageIconButton(
                    width: width * .35,
                    height: size.height * .06,
                    onPressed: () => _getImage(ImageSource.gallery),
                    icon: Icons.photo,
                    label: 'Gallery',
                  ),
                ],
              ),
              if (image != null)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  width: 200,
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
              TextFieldScreen(
                prefixIcon: Icon(Icons.link),
                hintText: 'website',
                labelText: "website",
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
                width: width * .5,
                route: LoginScreen(),
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
    );
  }
}
