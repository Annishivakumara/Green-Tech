import 'package:flutter/material.dart';
import 'package:flutter_application_1/gdg/Homenavigate.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/Help.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/PasswordChange.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/about.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/logout.dart';
import 'package:flutter_application_1/gdg/pages/settings/seetingpages/notification.dart';

class settingpage extends StatelessWidget {
  List<Widget> _pages =[
   
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100.0,
        title: Text('Settings',
            style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.bold)),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => homepage1()));
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text(
                'About App',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Help',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Help()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Logout()));
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text(
                'change password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.normal),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PasswordChange()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text(
                'Notification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => notification()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
