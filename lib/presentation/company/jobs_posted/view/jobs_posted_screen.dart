import 'package:flutter/material.dart';

import '../../postjob_screen/view/widgets/posted_jobs_details_card.dart';

class JobsPostedScreen extends StatefulWidget {
  const JobsPostedScreen({super.key});

  @override
  State<JobsPostedScreen> createState() => _JobsPostedScreenState();
}

class _JobsPostedScreenState extends State<JobsPostedScreen> {
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
          child: ListView.builder(itemCount: 2,itemBuilder: (context,index){
            return PostedJobsDetailsCard(
              size: size,
              companyName: 'Nitha',
              jobTitle: 'devoloper',
              description: 'kdjlfj',
              requirement: 'qjnd12312',
              salary: '12312',
              lastDate: '123123',
            );
          }),
        ),
      ),
    );
  }
}
