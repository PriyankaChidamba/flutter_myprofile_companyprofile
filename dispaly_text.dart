import 'package:flutter/material.dart';

import 'appdata_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appDataText;

  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.cyan,
      )),
      Center(
        child: Text(
          appDataText.Text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      )
    ]);
  }
}
