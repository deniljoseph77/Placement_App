import 'package:flutter/material.dart';
import 'package:placement_app/presentation/common/get%20started%20scrn/get_started.dart';
import 'package:placement_app/presentation/tpo/tpo_manager_user_screen/controller/tpo_manage_student_controller.dart';
import 'package:placement_app/presentation/tpo/tpo_manager_user_screen/view/widget/tpo_user_card.dart';
import 'package:provider/provider.dart';

class TPOManageStudentScreen extends StatefulWidget {
  const TPOManageStudentScreen({super.key});

  @override
  State<TPOManageStudentScreen> createState() => _TPOManageStudentScreenState();
}

class _TPOManageStudentScreenState extends State<TPOManageStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Students"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  accountName: Text("TPO"),
                  accountEmail: Text("Tpo@mail.com")),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => GetStarted()),
                      (route) => false);
                },
              )
            ],
          ),
        ),
        body: FutureBuilder(
            future:
                Provider.of<TPOManageStudentController>(context, listen: false)
                    .fetchStudentList(context),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return Consumer<TPOManageStudentController>(
                  builder: (context, tmsControl, child) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListView.builder(
                        itemCount:
                            tmsControl.tpoManageStudentModel.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TPOStudentCard(
                            fullName:
                                "${tmsControl.tpoManageStudentModel.data?[index].firstName} ${tmsControl.tpoManageStudentModel.data?[index].lastName}",
                            phone:
                                "${tmsControl.tpoManageStudentModel.data?[index].phoneNo}",
                            username:
                                '${tmsControl.tpoManageStudentModel.data?[index].username}',
                            email:
                                '${tmsControl.tpoManageStudentModel.data?[index].emailAddress}',
                          );
                        },
                      ),
                    );
                  },
                );
              }
            }));
  }
}
