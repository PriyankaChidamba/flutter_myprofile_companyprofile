import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pageview_imagepriyanka/app_data.dart';
import 'package:pageview_imagepriyanka/display_image.dart';
import 'package:pageview_imagepriyanka/drawer_navigation.dart';
import 'package:pageview_imagepriyanka/indicator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({Key? key}) : super(key: key);

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'OSCAR WILDE QUOTES IMAGES',
        ),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Share")),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 250,
            width: 380,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedindex = index;
                  });
                },
                itemCount: appdataList.length,
                itemBuilder: (context, index) {
                  var _quotes = appdataList[index];
                  var _scale = selectedindex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(microseconds: 400),
                      child: DisplayImage(
                        appdataList: _quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value as double,
                          child: child,
                        );
                      });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appdataList.length,
                    (index) => IndicatorOne(
                        isActive: selectedindex == index ? true : false))
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _shareInfo() async {
    ByteData imagebyte =
        await rootBundle.load(appdataList[selectedindex].image);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/download.jpg';
    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path], text: 'image Shared');
  }
}
