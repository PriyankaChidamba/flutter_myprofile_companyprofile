import 'package:flutter/material.dart';

import 'drawer_navigation.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Company Profile',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(20)),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/tidylifejpg.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'TIDY LIFE ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(color: Colors.cyan),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.cyan,
                ),
                title: Text(
                  '+91 8939130804',
                  style: TextStyle(color: Colors.cyan),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.cyan,
                ),
                title: Text(
                  'priyanka.chidambaram0307@gmail.com',
                  style: TextStyle(color: Colors.cyan),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.cyan,
                ),
                title: Text(
                  'No 1st cross street,\nchrompet,\nchennai-600044',
                  style: TextStyle(color: Colors.cyan),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
