import 'package:flutter/material.dart';
import 'package:pageview_imagepriyanka/app_data.dart';
class DisplayImage extends StatelessWidget {
  final AppData appdataList;

  const DisplayImage({Key? key, required this.appdataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      margin:   EdgeInsets.symmetric(horizontal: 2.0,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image:AssetImage(appdataList.image),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
