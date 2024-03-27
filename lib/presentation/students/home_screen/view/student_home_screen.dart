import 'package:flutter/material.dart';
import 'package:placement_app/core/constants/color_constants.dart';
import 'package:placement_app/core/constants/global_text_styles.dart';
import 'package:placement_app/global_widget/student_appbar.dart';
import 'package:placement_app/presentation/common/get%20started%20scrn/get_started.dart';
import 'package:placement_app/presentation/students/profile_Screen/view/profile_Screen_view.dart';


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
        appBar: StudentAppBar(
          title: "Materials",
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person_rounded),
                    backgroundColor: Colors.white,
                  ),
                  accountName: Text(
                    "Name",
                    style:GLTextStyles.labeltxtBlk20
                  ),
                  accountEmail: Text(
                    ""
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile",  style: GLTextStyles.labeltxtBlk18,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreenView()));
                },
              ),
              ListTile(
                leading: Icon(Icons.library_books_rounded),
                title: Text(
                  "Academic Details",  style: GLTextStyles.labeltxtBlk18
                ),
              ),
              ListTile(
                leading: Icon(Icons.file_copy),
                title: Text("Project Details",  style: GLTextStyles.labeltxtBlk18),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings",  style: GLTextStyles.labeltxtBlk18),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout",  style: GLTextStyles.labeltxtBlk18),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => GetStarted()),
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
                          color: ColorTheme.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chapters[index],
                                  style: TextStyle(color: ColorTheme.grey),
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
