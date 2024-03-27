import 'package:flutter/material.dart';

class StudentApplicationCard extends StatelessWidget {
  const StudentApplicationCard({super.key, required this.name, required this.date, required this.status});

  final String name;
  final String date;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Student Name"), Text("Date"), Text("Status")],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(":$name"), Text(":$date"), Text(":$status")],
            )
          ],
        ),
        subtitle: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.cancel_rounded, color: Colors.red),
                label: Text(''),
              ),
              Text(" Schedule Interview"),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.check, color: Colors.green),
                label: Text(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
