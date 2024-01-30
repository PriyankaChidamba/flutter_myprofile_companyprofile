import 'package:flutter/material.dart';
import 'package:pageview_imagepriyanka/company_profile.dart';
import 'package:pageview_imagepriyanka/my_profile.dart';
import 'package:pageview_imagepriyanka/pageview_image.dart';
import 'package:pageview_imagepriyanka/pageview_text.dart';

class DrawerNavigation extends StatefulWidget {
  DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white10,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/backgroundimage1.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            accountName: Text(
              'OSCAR WILDE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            accountEmail: Text(
              'Version 1.0',
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/oscarwilde profile photo.jpg'),
              radius: 50,
            ),
          ),
          ListTile(
            title: Text(
              'Quotes Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.cyan
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          ListTile(
            title: Text(
              'Quotes Image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>PageViewImage()));
            },
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
          ListTile(
            title: Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
        ],
      ),
    );
  }
}

