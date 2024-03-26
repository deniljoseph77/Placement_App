import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/bottomcontroller.dart';

class CompanyBottomNavigationScreen extends StatefulWidget {
  const CompanyBottomNavigationScreen({super.key});

  @override
  State<CompanyBottomNavigationScreen> createState() => _CompanyBottomNavigationScreenState();
}

class _CompanyBottomNavigationScreenState extends State<CompanyBottomNavigationScreen> {
  //int index = 0;
  //var screen =[home_page(),Trainer(),memberlist(),Equipment()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.of<bottomcontroller>(context).screens[Provider.of<bottomcontroller>(context).selectedindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
          child: BottomNavigationBar(
              backgroundColor: Colors.blueGrey,
              currentIndex: Provider.of<bottomcontroller>(context).selectedindex,
              onTap: Provider.of<bottomcontroller>(context, listen: false).onitemtap,
              elevation: 0,
              selectedIconTheme: const IconThemeData(
                color: Colors.white,
                size: 25,
              ),
              unselectedIconTheme: const IconThemeData(
                size: 25,
              ),
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(backgroundColor: Colors.blueGrey, icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.blueGrey, icon: Icon(Icons.post_add), label: "Post Job"),
                BottomNavigationBarItem(backgroundColor: Colors.blueGrey, icon: Icon(Icons.person), label: "profile"),
              ]),
        ),
      ),
    );
  }
}
