import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_news/configs/config.dart';
import 'package:flutter_news/wp-api.dart';

class PostPage extends StatefulWidget {
  final String title, desc, date, avatarUrlAuthor;
  final int id;
  PostPage({this.id, this.title, this.desc, this.date, this.avatarUrlAuthor});
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String avatarUrlAuthor = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(widget.title, style: AppStyle.titlePost),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.update,
                  color: Colors.grey.withOpacity(0.4),
                  size: 17,
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.5), fontSize: 14),
                )
              ],
            ),
            Html(
              data: widget.desc,
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Bình Luận :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 400,
              child: FutureBuilder(
                  future: fetchCommentPost(widget.id.toString()),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              Map wpCommentPost = snapshot.data[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(300.0),
                                        child: Image.network(wpCommentPost["author_avatar_urls"]["48"]),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(wpCommentPost["author_name"] + " :",
                                        style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    wpCommentPost["date_gmt"],
                                      style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 14)
                                  ),
                                  Html(
                                    data: wpCommentPost["content"]["rendered"]
                                  ),
                                  Divider()
                                ],
                              );
                            }),
                      );
                    }

                    return Center(child: CircularProgressIndicator());
                  }),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black,// set border color
                    width: 1.0),   // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)), // set rounded corner radius
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Bình luận',
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.colorThirdly,
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0)), //
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Text(
                        "Comment",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
