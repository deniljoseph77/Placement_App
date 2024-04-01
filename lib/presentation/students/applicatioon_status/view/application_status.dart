import 'package:flutter/material.dart';
import 'package:placement_app/presentation/students/applicatioon_status/controller/application_status_controller.dart';
import 'package:provider/provider.dart';

class ApplicationStatus extends StatefulWidget {
  const ApplicationStatus({super.key});

  @override
  State<ApplicationStatus> createState() => _ApplicationStatusState();
}

class _ApplicationStatusState extends State<ApplicationStatus> {
  @override
  void initState() {
    super.initState();
    fethcApplication(context);
  }

  fethcApplication(BuildContext context) {
    Provider.of<ApplicationStatusController>(context,listen: false).fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Applied Jobs"),
          centerTitle: true,
        ),
        body: Consumer<ApplicationStatusController>(
          builder: (context, aControl, child) {
            return aControl.isloading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: aControl.applicationStatusModel.data?.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Job Id : ${aControl.applicationStatusModel.data?[index].job}"),
                              Text(
                                "Name : ${aControl.applicationStatusModel.data?[index].student}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status : ${aControl.applicationStatusModel.data?[index].status}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                              Text(
                                  "Applied On : ${aControl.applicationStatusModel.data?[index].appliedDate}")
                            ],
                          ),
                        ),
                      );
                    });
          },
        ));
  }
}
