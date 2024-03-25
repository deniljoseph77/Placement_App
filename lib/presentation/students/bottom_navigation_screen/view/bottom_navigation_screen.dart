import 'package:flutter/material.dart';
import 'package:placement_app/presentation/students/apply_jobs_screen/view/apply_jobs_screen.dart';
import 'package:placement_app/presentation/students/bottom_navigation_screen/controller/bottom_navigation_controller.dart';
import 'package:placement_app/presentation/students/home_screen/view/student_home_screen.dart';
import 'package:placement_app/presentation/students/quiz_screen/view/quiz_screen.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigationController>(
        builder: (context,controller,_) {
          return IndexedStack(
            children: [HomeScreenView(), ApplyJobScreen(), QuizScreen()],
            index: controller.currentIndex,
          );
        }
      ),
      bottomNavigationBar: Consumer<BottomNavigationController>(builder: (context, controller, _) {
        return BottomNavigationBar(
            onTap: (index) {
              controller.currentIndex = index;
            },
            currentIndex: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.blueGrey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: "Material"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Apply"),
              BottomNavigationBarItem(icon: Icon(Icons.quiz), label: "Quiz")
            ]);
      }),
    );
  }
}
