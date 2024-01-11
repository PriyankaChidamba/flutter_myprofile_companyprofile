import 'package:flutter/material.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/subiimage.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'SOFTWARE PRIVATE LIMITED',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(color: Colors.blue),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text(
                  '+91 8939130804',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.blue,
                ),
                title: Text(
                  'priyanka.chidambaram0307@gmail.com',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.blue,
                ),
                title: Text(
                  'No 1st cross street,\nchrompet,\nchennai-600044',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
