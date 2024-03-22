import 'package:flutter/material.dart';
import 'package:placement_app/presentation/students/profile_Screen/view/profile_Screen_view.dart';

import '../../../common/login_screen/view/login_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  var lists = ["Apply and Search or Job", "View Materials", "Start A Quiz"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreenView()));
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
                      context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: lists.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
                      width: 300,
                      height: 180,
                      child: Center(
                          child: Text(
                        lists[index],
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  )),
        ),
      ),
    );
  }
}
