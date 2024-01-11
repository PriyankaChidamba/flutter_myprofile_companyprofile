import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
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
              Padding(padding: EdgeInsets.all(10),
             child: Text(
                'Priyanka',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21,color: Colors.pink),
              ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 21,color: Colors.pink),
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
                    color: Colors.pink,
                  ),
                  title: Text(
                    '+91 8939130804',
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ),
              Card(margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'priyanka.chidambaram0307@gmail.com',
                    style: TextStyle(color: Colors.pink),
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
