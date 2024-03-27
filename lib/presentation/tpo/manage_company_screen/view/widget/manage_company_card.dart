import 'package:flutter/material.dart';

class ManageCompanyCard extends StatelessWidget {
  const ManageCompanyCard({super.key, required this.size, required this.name, required this.headquarters, required this.industry, this.logo});

  final Size size;
  final String name;
  final String headquarters;
  final String industry;
  final String? logo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(bottom: size.height * .01),
        margin: EdgeInsets.only(left: size.width * .1, right: size.width * .1),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("$name"), Text("$headquarters"), Text("$industry")],
                ),
                Column(
                  children: [ClipOval(child: Image(height: 100, image: AssetImage("$logo")))],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
