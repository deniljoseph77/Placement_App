import 'package:flutter/material.dart';

class PostJobScreen extends StatefulWidget {
  const PostJobScreen({super.key});

  @override
  State<PostJobScreen> createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post job"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Text("Company Name"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Position"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Description"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
              maxLines: 4,
            ),
            SizedBox(
              height: 20,
            ),
            Text(" Skill Requirement"),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
            SizedBox(
              height: 20,
            ),
            Text("Location"),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
            SizedBox(
              height: 20,
            ),
            Text("Salary"),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
            SizedBox(
              height: 20,
            ),
            Text("Application Deadline"),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)))),
            SizedBox(
              height: 17,
            ),
            Center(
              child: MaterialButton(
                  color: Colors.blueGrey,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                    "DONE",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
