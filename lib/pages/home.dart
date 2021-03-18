import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_news/configs/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/wp-api.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'pages.dart';

enum Page { Dashboard, Post, Login, About }

extension on Page {
  String get route => describeEnum(this);
}

class Home extends HookWidget {
  String category;

  final Map<Page, Widget> _fragments = {
    Page.Dashboard: DashBoardPage(),
    Page.Post: PostPage(),
    Page.Login: LoginPage(),
    Page.About: AboutPage(),
  };

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);
    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState.canPop()) {
          navigatorKey.currentState.pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorSecondary,
          centerTitle: false,
          title: Text(
            'News',
            style: AppStyle.title,
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("asset/image/logo.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ SINH THÁI VIỆT VIET ELO',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.colorSecondary,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                    child: Text(
                                  'Đăng nhập',
                                  style: AppStyle.sub,
                                )),
                                Text(' | ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                InkWell(
                                    child: Text(
                                  'Ghi danh',
                                  style: AppStyle.sub,
                                )),
                                Spacer(),
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Slider(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Navigator(
                      key: navigatorKey,
                      initialRoute: Page.Dashboard.route,
                      onGenerateRoute: (settings) {
                        final pageName = settings.name;
                        final page = _fragments.keys.firstWhere(
                            (element) => describeEnum(element) == pageName);
                        return MaterialPageRoute(
                            settings: settings,
                            builder: (context) => _fragments[page]);
                      },
                    ),
                  ),
                  Footer(),
                ],
              ),
            )
          ],
        ),
        endDrawer: Drawer(
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                  color: Colors.black54,
                  iconSize: 38,
                )
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FutureBuilder(
                future: fetchCategories("0"),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map wpCategories = snapshot.data[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary: AppColors.colorPrimary,
                                  // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                                ),
                                onPressed: (){
                                  // Navigator.push(
                                  //     context, MaterialPageRoute(builder: (BuildContext context) => DashBoardPage(id: "14",)));
                          },
                                child: Text(
                                  wpCategories['name'],
                                  style: AppStyle.subTitle,
                                ),
                              ),
                            ],
                          );
                        });
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.colorFooter,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Column(
        children: [
          Text(
            "Đăng ký nhận tin mới",
            style: AppStyle.titleWhiteSm,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            child: TextField(
              style: AppStyle.subBlack,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Container(
                    color: Colors.blue,
                    child: Image.asset('asset/image/icon-send.png')),
              ),
            ),
          ),
          Text(
            "Giờ làm việc",
            style: AppStyle.titleWhiteSm,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Column(
              children: [
                Text("8:00 - 17:00 ( Thứ 2 đến thứ 6 ).",
                    style: AppStyle.subGrey),
                Text("8:00 - 12:00 ( Thứ 7 ).", style: AppStyle.subGrey),
                Text("Nghỉ ( Chủ nhật và ngày lễ ).", style: AppStyle.subGrey),
              ],
            ),
          ),
          Text(
            "Kết nối với chúng tôi",
            style: AppStyle.titleWhiteSm,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: 270,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("asset/image/icon-face.png"),
                Image.asset("asset/image/icon-g+.png"),
                Image.asset("asset/image/icon-youtube.png"),
                Image.asset("asset/image/icon-tiw.png"),
              ],
            ),
          ),
          Divider(color: Colors.grey),
          Text(
            "© Copyright 2017 Bản quyền thuộc về Công ty TNHH TVĐT Sinh Thái Việt.",
            style: AppStyle.subGrey,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class Slider extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  SwiperController controller;
  List<bool> autoplayes;
  List<SwiperController> controllers;

  @override
  void initState() {
    controller = new SwiperController();
    autoplayes = new List()
      ..length = 10
      ..fillRange(0, 10, false);
    controllers = new List()
      ..length = 10
      ..fillRange(0, 10, new SwiperController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 160,
      child: Stack(
        children: [
          Swiper(
            autoplay: true,
            loop: true,
            itemCount: 3,
            controller: controller,
            pagination: SwiperPagination(
                margin: EdgeInsets.all(12), alignment: Alignment.bottomRight),
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                "asset/image/banner_1.png",
                fit: BoxFit.fill,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.9,
              child: Card(
                  margin: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                  color: AppColors.colorThirdly,
                  elevation: 8,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sứ mệnh: ', style: AppStyle.subUnderline),
                        TextSpan(
                            text:
                                ' “Mang niềm tin đến doanh nghiệp và người tiêu dùng”. ',
                            style: AppStyle.sub),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
