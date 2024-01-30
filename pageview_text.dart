import 'package:flutter/material.dart';
import 'package:pageview_imagepriyanka/dispaly_text.dart';
import 'package:share_plus/share_plus.dart';

import 'appdata_text.dart';
import 'drawer_navigation.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({Key? key}) : super(key: key);

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('OSCAR WILDE'),
        backgroundColor: Colors.cyan,
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
            height: 200,
            width: 350,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedindex=index;
                  });
                },
                itemCount: appdatatext.length,
                itemBuilder: (context, index) {
                  var _quotes = appdatatext[index];
                  var _scale = selectedindex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(microseconds: 300),
                      child: DisplayText(
                        appDataText: _quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value as double,
                          child: child,
                        );
                      });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: new Text(
                      (selectedindex + 1).toString() +
                          '/' +
                          appdatatext.length.toString(),
                      style: TextStyle(fontSize: 25, color: Colors.cyan),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  _shareInfo() {
    print('------>share');
    Share.share(appdatatext[selectedindex].Text);
    print(appdatatext[selectedindex].Text);
  }
}
