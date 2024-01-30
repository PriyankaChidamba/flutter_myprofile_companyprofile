import 'package:flutter/material.dart';

import 'drawer_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'MY PROFILE',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('images/birdsphoto.jpg'),
              ),

              Text(
                'Priyanka',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21,color: Colors.cyan),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21,color: Colors.cyan),
              ),
              SizedBox(
                height: 15,
                width: 250,
                child: Divider(
                  endIndent: 5,
                  color: Colors.pink,
                ),
              ),
              Card(margin: EdgeInsets.all(10),
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
              Card(margin: EdgeInsets.all(10),
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
            ],
          ),
        ),
      ),
    );
  }
}
