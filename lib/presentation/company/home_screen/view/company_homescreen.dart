import 'package:flutter/material.dart';


class CompanyHomeScreen extends StatelessWidget {
  const CompanyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Dashboard"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
     
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  
                  title: Column(children: [
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Student name:")
                      ]
                    )),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Date :")
                        ]
                    )) , RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Status:")
                        ]
                    ))],),
                  subtitle: Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.cancel_rounded), label: Text('')),
                        Text(" Schedule Interview"),
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text(''))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              // InkWell(
              //   child: Container(
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
              //       width: 300,
              //       height: 180,
              //       child: Center(
              //           child: Text(
              //         "Schedule a Interview",
              //         style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
              //       ))),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
