import 'package:flutter/material.dart';

class Home_Screen_view extends StatefulWidget {
  const Home_Screen_view({super.key});

  @override
  State<Home_Screen_view> createState() => _Home_Screen_viewState();
}

class _Home_Screen_viewState extends State<Home_Screen_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Dashboard"),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white24),
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
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Add Resume"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("logout"),
            ),
          ],
        ),
      ),
    );
  }
}
