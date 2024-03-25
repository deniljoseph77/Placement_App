import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/bottomnavigation/view/controller/bottomcontroller.dart';

import 'package:provider/provider.dart';




void main(){
  runApp(MaterialApp(
    home: bottomnavigation(),
    debugShowCheckedModeBanner: false,
  ));
}
class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  //int index = 0;
  //var screen =[home_page(),Trainer(),memberlist(),Equipment()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.of<bottomcontroller>(context)
          .screens[Provider.of<bottomcontroller>(context).selectedindex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueGrey),
          child: BottomNavigationBar(
            backgroundColor: Colors.blueGrey,
              currentIndex:
              Provider.of<bottomcontroller>(context).selectedindex,
              onTap: Provider.of<bottomcontroller>(context, listen: false)
                  .onitemtap,
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
                BottomNavigationBarItem(backgroundColor: Colors.blueGrey,
                    icon: Icon(Icons.home),
                    label: "Home"),
                BottomNavigationBarItem(backgroundColor: Colors.blueGrey,
                    icon: Icon(Icons.post_add),
                    label: "Post Job"),
                BottomNavigationBarItem(backgroundColor: Colors.blueGrey,
                    icon: Icon(Icons.person),
                    label: "profile"),

              ]),
        ),
      ),
    );
    //   Scaffold(
    //
    //   bottomNavigationBar: BottomNavigationBar(
    //
    //     items: const [
    //       BottomNavigationBarItem(icon: Icon(Icons .home),label: 'Home',backgroundColor: Color(0xFF473F97),activeIcon: Icon(Icons.home,color: Colors.black54,)),
    //       BottomNavigationBarItem(icon: Icon(Icons .person),label: "Trainer",backgroundColor: Color(0xFF473F97),activeIcon: Icon(Icons.person,color: Colors.black54,)),
    //       BottomNavigationBarItem(icon: Icon(Icons.people,),label: "Member",backgroundColor: Color(0xFF473F97),activeIcon: Icon(Icons.people,color: Colors.black54,)),
    //       BottomNavigationBarItem(icon: Icon(Icons.fitness_center,),label: "Equipment",backgroundColor: Color(0xFF473F97),activeIcon: Icon(Icons.fitness_center,color: Colors.black54,)),
    //
    //
    //     ],
    //     onTap: (tapindex) {
    //       setState(() {
    //         index = tapindex;
    //       });
    //     },
    //     currentIndex:index ,
    //     selectedItemColor: Colors.blue,
    //      ),
    //   body: screen[index],
    // );
  }
}