import 'package:flutter/material.dart';
import 'package:flutter_news/configs/configs.dart';
import 'package:flutter_news/pages/about_page.dart';

import '../wp-api.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  bool onClick = true;
  PageController pageController;
  int cateId;
  dynamic _colorActive;

  @override
  void initState() {
    cateId = 4;
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      myData: cateId,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(vertical: 14),
            width: double.infinity,
            color: AppColors.colorFourthly,
            child: Column(
              children: [
                Text(
                  "Giới thiệu",
                  style: AppStyle.title2,
                ),
                Image.asset("asset/image/line_title.png"),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  child: Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child:
                                Image.asset("asset/image/icon-arrow.png")),
                            TextSpan(
                                text:
                                ' CÔNG TY TNHH TƯ VẤN & ĐẦU TƯ SINH THÁI VIỆT',
                                style: AppStyle.subBlack),
                            TextSpan(text: ' hay', style: AppStyle.subBlack),
                            TextSpan(
                                text: ' Elodichvu', style: AppStyle.subOrange),
                            TextSpan(
                                text:
                                ' là một những thương hiệu tại Việt Nam, chuyên cung cấp các dịch vụ tư vấn pháp lý đầu tư dự án, các loại cấp phép, các dịch vụ du lịch nghỉ dưỡng, thực phẩm hữu cơ an toàn; PR thương hiệu và xây dựng chiến lược marketing online uy tín và chất lượng hiện nay.',
                                style: AppStyle.subBlack),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child:
                                Image.asset("asset/image/icon-arrow.png")),
                            TextSpan(
                                text:
                                ' Được sáng lập bởi Mr Trương Đình Thạnh, với 100% vốn Việt Nam, Mr Thạnh tốt nghiệp thạc sỹ khoa Quản lý kinh doanh quốc tế – Đại học hoa khọc ứng dụng Áo (2013-2015), và tu nghiệp Chương trình Marketing Chiến lược tại Nước Pháp (1997-1998).',
                                style: AppStyle.subBlack),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: AppColors.colorThirdly,
                      onSurface: AppColors.colorSecondary,
                    ),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutPage()));
                    },
                    child: Text("Xem thêm"))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "DỊCH VỤ CỦA CHÚNG TÔI",
                  style: AppStyle.title2,
                ),
                Image.asset("asset/image/line_title.png"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  child: Text(
                    "Đam mê cùng năng lực, chúng tôi: Đội ngũ kinh nghiệm nhiệt tình và trách nhiệm, cam kết Phải chú trọng Uy tín, dịch vụ Chất lượng tốt, và cuối cùng luôn lắng nghe khách hàng, không ngừng nỗ lực và cải thiện nhằm mang lại sự thõa mãn nhất đến khách hàng và người tiêu dùng.",
                    style: AppStyle.subBlack,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.colorThirdly,
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FutureBuilder(
              future: fetchCategories("0"),
              builder: (context, snapshotParent) {
                if (snapshotParent.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshotParent.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map wpCategoriesParent = snapshotParent.data[index];
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              cateId = wpCategoriesParent['id'];
                              pageController.jumpToPage(index);
                              _colorActive = index;
                            });
                          },
                          child: Container(
                            height: 50,
                            color: _colorActive == index ? AppColors.colorClicked : Colors.transparent,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                                child: Text(
                                  wpCategoriesParent['name'],
                                  style: AppStyle.titleWhiteSm,
                                )),
                          ),
                        );
                      });
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          CategoryBody(pageController: pageController),
        ],
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  MyInheritedWidget({Widget child, this.myData}) : super(child: child);

  final int myData;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return false;
  }

  static MyInheritedWidget of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}

class CategoryBody extends StatefulWidget {
  final PageController pageController;

  const CategoryBody({Key key, this.pageController}) : super(key: key);
  @override
  _CategoryBodyState createState() => _CategoryBodyState(pageController);
}

class _CategoryBodyState extends State<CategoryBody> {
  PageController pageController;
  _CategoryBodyState(this.pageController);

  @override
  Widget build(BuildContext context) {
    final cateId = MyInheritedWidget.of(context).myData;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      height: MediaQuery.of(context).size.height,
      child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index){
            return FutureBuilder(
              future: fetchCategories("$cateId"),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map wpCategories = snapshot.data[index];
                        return SubCategories(
                          name: wpCategories['name'],
                        );
                      });
                }
                return Center(child: CircularProgressIndicator());
              },
            );
          }),
    );
  }
}

class SubCategories extends StatelessWidget {

  final String name;

  const SubCategories({Key key, this.name}) : super(key: key);

  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlText.replaceAll(exp, '');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: Colors.black87,
          child: Row(
            children: [
              Image.asset("asset/image/icon-title.png"),
              SizedBox(width: 20),
              Text(name, style: AppStyle.sub,),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.grey.shade800,
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          padding: EdgeInsets.only(top: 24),
          child: FutureBuilder(
            future: fetchWpPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2/4,
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        Map wppost = snapshot.data[index];
                        return PostTile(
                            imageApiUrl: wppost['_links']["wp:featuredmedia"]
                            [0]["href"],
                            date: wppost['date'],
                            excerpt: removeAllHtmlTags(wppost['excerpt']
                            ['rendered']
                                .replaceAll("&#8217;", "")),
                            desc: wppost['content']['rendered'],
                            title: wppost['title']['rendered']
                                .replaceAll("#038;", ""));
                      }),
                );
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}

class PostTile extends StatefulWidget {
  final String imageApiUrl, title, desc, date, excerpt;

  PostTile({this.imageApiUrl, this.title, this.date,this.desc, this.excerpt});

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  String imageUrl = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
                future: fetchWpPostImageUrl(widget.imageApiUrl),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    imageUrl = snapshot.data["media_details"]["sizes"]['full']
                        ['source_url'];
                    return Image.network(imageUrl);
                  }
                  return Center(child: CircularProgressIndicator());
                }),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.update, color: Colors.grey.withOpacity(0.4), size: 17,),
                Text(widget.date, style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 14),)
              ],
            ),
            Text(
              widget.title,
              style: AppStyle.titleBlack,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 5),
            Text(widget.excerpt,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 8,
              softWrap: true,)
          ],
        ),
      ),
    );
  }
}
