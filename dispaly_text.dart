import 'package:flutter/material.dart';
import 'package:flutter_page_view_priyanga/app_data.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;

  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,

      child: Text(appDataText.Text,textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
    );
  }
}
