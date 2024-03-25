import 'package:flutter/material.dart';
import 'package:placement_app/core/constants/color_constants.dart';
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
            children: [MaterialScreen(), ApplyJobScreen(), QuizScreen()],
            index: controller.currentIndex,
          );
        }
      ),
      bottomNavigationBar: Consumer<BottomNavigationController>(builder: (context, controller, _) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorConstants.primary),
            child: BottomNavigationBar(
                selectedIconTheme:IconThemeData(color: ColorConstants.white),elevation:0,
                backgroundColor: ColorConstants.primary,
                onTap: (index) {
                  controller.currentIndex = index;
                },
                currentIndex: controller.currentIndex,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: ColorConstants.grey,
                selectedItemColor: ColorConstants.white,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: "Material"),
                  BottomNavigationBarItem(icon: Icon(Icons.add), label: "Apply"),
                  BottomNavigationBarItem(icon: Icon(Icons.quiz), label: "Quiz")
                ]),
          ),
        );
      }),
    );
  }
}
