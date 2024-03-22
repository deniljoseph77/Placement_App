import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/postjob/view/postviewscreen.dart';

void main() {
  runApp(MaterialApp(
    home: companyhomescreen(),
  ));
}

class companyhomescreen extends StatefulWidget {
  const companyhomescreen({super.key});

  @override
  State<companyhomescreen> createState() => _companyhomescreenState();
}

class _companyhomescreenState extends State<companyhomescreen> {
  var lists = ["Post Job Openings", "Schedule a Interview"];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(""), accountEmail: Text(""))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Company Dashboard"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Postjob_Screen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    width: 300,
                    height: 180,
                    child: Center(
                        child: Text(
                      "Post Job Opening",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),
                    ))),
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    width: 300,
                    height: 180,
                    child: Center(
                        child: Text(
                      "Schedule a Interview",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
