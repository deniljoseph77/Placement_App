import 'package:flutter/material.dart';
import 'package:placement_app/presentation/tpo/manage_request_screen/view/widget/student_request_card.dart';

class TPOManageRequestScreen extends StatelessWidget {
  const TPOManageRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return StudentRequestCard(
              size: size,
              name: 'Nitha Parveen',
              jobApplied: 'Flutter Devoloper',
              status: 'Pending',
              dateTime: DateTime.now(),
            );
          }),
    );
  }
}
