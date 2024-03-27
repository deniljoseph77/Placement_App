import 'package:flutter/material.dart';
import 'package:placement_app/global_widget/student_appbar.dart';
import 'package:placement_app/presentation/students/apply_jobs_screen/controller/apply_job_controller.dart';
import 'package:placement_app/presentation/students/apply_jobs_screen/view/widget/apply_jobs_card.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';

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
                      return
                      //   ApplyJobsCard(
                      //   size: size,
                      //   position: controller.applyJobsModel.data?[index].position,
                      //   description: controller.applyJobsModel.data?[index].description,
                      //   deadLine: controller.applyJobsModel.data?[index].deadline.toString(),
                      //   location: controller.applyJobsModel.data?[index].location,
                      //   salary: controller.applyJobsModel.data?[index].salary,
                      //   requirement: controller.applyJobsModel.data?[index].requirements,
                      //   onPressed: () {
                      //     Provider.of<ApplyJobsController>(context,listen: false).postApplyJob(context, controller.applyJobsModel.data?[index].id);
                      //   },
                      // )
                        Container(
                          height: size.height * .34,
                          width: size.width * .9,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.only(left: size.width * .03, right: size.width * .03),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${controller.applyJobsModel.data?[index].position}",
                                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${controller.applyJobsModel.data?[index].description}',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${controller.applyJobsModel.data?[index].requirements}',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${controller.applyJobsModel.data?[index].location}',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Salary: ${controller.applyJobsModel.data?[index].salary}',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    'Last Date:${controller.applyJobsModel.data?[index].deadline}',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                                  ),
                                  SizedBox(height: 5),
                                  SizedBox(height: 10),
                                  Center(
                                    child: MaterialButton(
                                      color: ColorTheme.primary,
                                      child: Text(
                                        "APPLY NOW",
                                        style: TextStyle(color: ColorTheme.white, fontWeight: FontWeight.bold),
                                      ),
                                      height: size.height * .06,
                                      onPressed: () {
                                        Provider.of<ApplyJobsController>(context,listen: false).postApplyJob(context, controller.applyJobsModel.data?[index].id);
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ;
                    }),
              );
      }),
    );
  }
}
