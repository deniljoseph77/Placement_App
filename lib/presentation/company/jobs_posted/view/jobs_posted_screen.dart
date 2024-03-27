import 'package:flutter/material.dart';
import 'package:placement_app/presentation/company/jobs_posted/controller/job_posted_controller.dart';
import 'package:provider/provider.dart';

import '../../postjob_screen/view/widgets/posted_jobs_details_card.dart';

class JobsPostedScreen extends StatefulWidget {
  const JobsPostedScreen({super.key});

  @override
  State<JobsPostedScreen> createState() => _JobsPostedScreenState();
}

class _JobsPostedScreenState extends State<JobsPostedScreen> {
  @override
  void initState() {
    fetchData(context);
    super.initState();
  }

  fetchData(context) {
    Provider.of<JobsPostedController>(context, listen: false)
        .fetchJobsPosted(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Jobs Posted"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child:
              Consumer<JobsPostedController>(builder: (context, controller, _) {
            return controller.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.postedJobsModel.data?.length,
                    itemBuilder: (context, index) {
                      return PostedJobsDetailsCard(
                        size: size,
                        companyName:
                            controller.postedJobsModel.data?[index].postedBy,
                        jobTitle:
                            controller.postedJobsModel.data?[index].position,
                        description:
                            controller.postedJobsModel.data?[index].description,
                        requirement: controller
                            .postedJobsModel.data?[index].requirements,
                        salary: controller.postedJobsModel.data?[index].salary,
                        lastDate: controller
                            .postedJobsModel.data?[index].deadline
                            .toString(),
                      );
                    });
          }),
        ),
      ),
    );
  }
}
