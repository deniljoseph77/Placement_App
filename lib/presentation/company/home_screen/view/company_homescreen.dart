import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/login_screen/view/login_screen.dart';

import '../../postjob_screen/view/postjob_screen.dart';

class CompanyHomeScreen extends StatelessWidget {
  const CompanyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Dashboard"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("Company"),
                accountEmail: Text("company@mail.com")),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PostJobScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
                    width: 300,
                    height: 180,
                    child: Center(
                        child: Text(
                      "Post Job Opening",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                    ))),
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
                    width: 300,
                    height: 180,
                    child: Center(
                        child: Text(
                      "Schedule a Interview",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
