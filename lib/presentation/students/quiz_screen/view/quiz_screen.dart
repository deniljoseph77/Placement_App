import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child:
          MaterialButton(
              color: ColorConstants.primary,
              child: Text(
                "START QUIZ NOW !",
                style: TextStyle(
                  fontSize: 20,
                    color: ColorConstants.white,
                    fontWeight: FontWeight.bold),
              ),
              height: size.height * .15,
              onPressed: () {
              })),
    );
  }
}
