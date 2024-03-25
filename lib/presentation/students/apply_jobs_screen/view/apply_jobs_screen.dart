import 'package:flutter/material.dart';
import 'package:placement_app/core/constants/color_constants.dart';
import 'package:placement_app/global_widget/student_appbar.dart';

import '../../bottom_navigation_screen/view/bottom_navigation_screen.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: StudentAppBar(
          title: "Apply for Jobs",
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: size.height * .4,
                width: size.width * .9,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Job Title',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Descripton',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Salary',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: MaterialButton(
                                color: ColorTheme.primary,
                                child: Text(
                                  "APPLY NOW",
                                  style: TextStyle(
                                      color: ColorTheme.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                height: size.height * .08,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            actions: [
                                              Center(
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const BottomNavigationScreen()),
                                                          (route) => false);
                                                    },
                                                    child: Text('DONE',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                ColorTheme
                                                                    .primary,
                                                            fontSize: 20))),
                                              ),
                                            ],
                                            backgroundColor: Colors.white,
                                          ));
                                }))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
