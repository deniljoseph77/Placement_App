import 'package:flutter/material.dart';
import 'package:placement_app/presentation/tpo/manage_company_screen/view/widget/manage_company_card.dart';

class TPOManageCompanyScreen extends StatelessWidget {
  const TPOManageCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(18),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return ManageCompanyCard(size: size, name: "Company", headquarters: 'Kochi', industry: 'IT',logo: "asset/logo/company_logo_dummy.jpg",);
              })),
    );
  }
}


