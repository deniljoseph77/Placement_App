import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/home_screen/view/widget/student_application_card.dart';

class CompanyHomeScreen extends StatelessWidget {
  const CompanyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              StudentApplicationCard(name: 'Nitha Parveen', date: '13/12/24', status: 'Approved'),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


