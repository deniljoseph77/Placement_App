import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Container(
                height: size.width * .3,
                width: size.width * .9,
                padding: EdgeInsets.only(left: 10, top: 10,bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Company  :'),
                            Text('Job title   :'),
                            Text('Description :'),
                            Text('Requirement :'),
                            Text('Salary      :'),
                            Text('Last date   :'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
