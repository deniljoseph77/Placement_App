import 'package:flutter/material.dart';


class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(color: Colors.white,
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.zero),
          prefixIcon: Icon(Icons.search),labelText: "Search"
          ),),
        ),centerTitle: true,
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
