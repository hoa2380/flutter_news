import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_news/configs/config.dart';
import 'package:flutter_news/wp-api.dart';

class AboutPage extends StatelessWidget {
  String content, title;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchAbout(),
      builder: (context, snapshot) {
        title = snapshot.data['title']['rendered'];
        content = snapshot.data['content']['rendered'];
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                title,
                style: AppStyle.title2,
              ),
              Image.asset("asset/image/line_title.png"),
              SizedBox(
                height: 15,
              ),
              Html(
                data: content,
                style: {
                  "a": Style(
                      fontSize: FontSize(20),
                      textAlign: TextAlign.center,
                      color: AppColors.colorFifthly
                  ),
                  "h3, h4": Style(
                      fontSize: FontSize(20),
                      textAlign: TextAlign.center,
                      color: Colors.black87
                  ),
                  "p": Style(
                    fontSize: FontSize(18),
                    color: Colors.black87
                  ),
                },
              )
            ],
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
