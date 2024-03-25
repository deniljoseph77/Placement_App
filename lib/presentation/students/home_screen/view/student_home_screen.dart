import 'package:flutter/material.dart';
import 'package:placement_app/core/constants/color_constants.dart';
import 'package:placement_app/presentation/students/profile_Screen/view/profile_Screen_view.dart';

import '../../../common/login_screen/view/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MaterialScreen(),
  ));
}

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({super.key});

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  var chapters = [
    "Chapter 1",
    "Chapter 2",
    "Chapter 3",
    "Chapter 4",
    "Chapter 5"
  ];
  var chaptername = [
    "Problems on Train",
    "Permutations and Combinations",
    "Probability",
    "Time and Work",
    "Percentage"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Student Dashboard"),
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.grey,
                  ),
                  accountName: Text(
                    "Name",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Email",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreenView()));
                },
              ),
              // ListTile(
              //   leading: Icon(Icons.upload),
              //   title: Text("Add Resume"),
              //   onTap: () {},
              // ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(),
                        height: size.height * .18,
                        width: size.width * .1,
                        child: Card(
                          color: ColorConstants.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25,left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chapters[index],
                                  style: TextStyle(color: ColorConstants.grey),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  chaptername[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
