import 'package:flutter/material.dart';

import '../../../common/login_screen/view/login_screen.dart';

class tpohomescreen extends StatelessWidget {
  const tpohomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TPO"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("TPO"),
                accountEmail: Text("Tpo@mail.com")),
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

                },
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
                    width: 300,
                    height: 180,
                    child: Center(
                        child: Text(
                          "Manage User",
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
                          "Add Material ",
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
