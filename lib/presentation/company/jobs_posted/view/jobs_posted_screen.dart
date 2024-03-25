import 'package:flutter/material.dart';

class Jobs_posted_Screen extends StatefulWidget {
  const Jobs_posted_Screen({super.key});

  @override
  State<Jobs_posted_Screen> createState() => _Jobs_posted_ScreenState();
}

class _Jobs_posted_ScreenState extends State<Jobs_posted_Screen> {
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
                padding: EdgeInsets.only(left: 10, top: 10),
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
