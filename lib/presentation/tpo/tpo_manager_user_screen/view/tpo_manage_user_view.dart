import 'package:flutter/material.dart';
import 'package:placement_app/presentation/tpo/tpo_manager_user_screen/view/widget/tpo_user_card.dart';

import '../../../common/login_screen/view/login_screen.dart';

class TPOManageUserScreen extends StatelessWidget {
  const TPOManageUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TPO"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text("TPO"),
                accountEmail: Text("Tpo@mail.com")),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            TPOStudentCard(
              fullName: 'Nitha Parveen',
              phone: '98787576889',
              email: 'nithaparveen@gmail.com',
              username: 'nithaparveen',
            )
          ],
        ),
      ),
    );
  }
}
