import 'package:flutter/material.dart';
import 'package:placement_app/presentation/tpo/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/tpo/manage_request_screen/view/manage_request_screen.dart';
import 'package:placement_app/presentation/tpo/tpohomescreen/view/tpohomescreen_view.dart';
import 'package:provider/provider.dart';

class TPOBottomNavigationScreen extends StatelessWidget {
  const TPOBottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TPOBottomNavigationController>(builder: (context, controller, _) {
        return IndexedStack(
          index: controller.currentIndex,
          children: const [TPOHomeScreen(), TPOManageRequestScreen()],
        );
      }),
      bottomNavigationBar: Consumer<TPOBottomNavigationController>(builder: (context, controller, _) {
        return BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: (index) {
              controller.currentIndex = index;
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.blueGrey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Manage User"),
              BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Manage Request"),
            ]);
      }),
    );
  }
}
