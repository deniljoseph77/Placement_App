import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/home_screen/controller/home_screen_controller.dart';
import 'package:placement_app/presentation/company/home_screen/view/widget/student_application_card.dart';
import 'package:provider/provider.dart';

class CompanyHomeScreen extends StatefulWidget {
  const CompanyHomeScreen({super.key});

  @override
  State<CompanyHomeScreen> createState() => _CompanyHomeScreenState();
}

class _CompanyHomeScreenState extends State<CompanyHomeScreen> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() async {
    Provider.of<HomeScreenController>(context, listen: false).fetchStudentApplication(context);
  }

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
          child: Consumer<HomeScreenController>(builder: (context, controller, _) {
            return ListView.builder(
                itemCount: controller.studentApplicationModel.data?.length, itemBuilder: (context, index) {
              return StudentApplicationCard(name: controller.studentApplicationModel.data?[index].student,
                  date: controller.studentApplicationModel.data?[index].appliedDate.toString(),
                  status: controller.studentApplicationModel.data?[index].status);
            });
          }),
        ),
      ),
    );
  }
}
