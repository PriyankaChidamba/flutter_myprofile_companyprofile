import 'package:flutter/material.dart';
import 'package:flutter_page_view_priyanga/app_data.dart';
import 'package:flutter_page_view_priyanga/dispaly_text.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({Key? key}) : super(key: key);

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OSCAR WILDE'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 200,
              child: PageView.builder(
                  itemCount: appdatatext.length,
                  itemBuilder: (context, index) {
                    return DisplayText(appDataText: appdatatext[index]);
                  }))
        ],
      ),
    );
  }
}
