import 'package:flutter/material.dart';
import 'package:placement_app/global_widget/student_appbar.dart';
import 'package:placement_app/presentation/students/apply_jobs_screen/controller/apply_job_controller.dart';
import 'package:placement_app/presentation/students/apply_jobs_screen/view/widget/apply_jobs_card.dart';
import 'package:provider/provider.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  fetchData(context) {
    Provider.of<ApplyJobsController>(context, listen: false).fetchApplyJobs(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: StudentAppBar(
          title: "Apply for Jobs",
        ),
        body: Consumer<ApplyJobsController>(builder: (context, controller, _) {
          return controller.isLoading
              ? Center(child: CircularProgressIndicator())
              : Center(
                  child: ListView.builder(
                      itemCount: controller.applyJobsModel.data?.length,
                      itemBuilder: (context, index) {
                        return ApplyJobsCard(
                          size: size,
                          position: controller.applyJobsModel.data?[index].position,
                          description: controller.applyJobsModel.data?[index].description,
                          deadLine: controller.applyJobsModel.data?[index].deadline.toString(),
                          location: controller.applyJobsModel.data?[index].location,
                          salary: controller.applyJobsModel.data?[index].salary,
                          requirement: controller.applyJobsModel.data?[index].requirements,
                        );
                      }));
        }));
  }
}
