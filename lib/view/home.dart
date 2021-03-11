import 'dart:ui';
import 'package:flutter_news/configs/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorSecondary,
        centerTitle: false,
        title: Text(
          'News',
          style: AppStyle.titleWhite,
        ),
      ),
      endDrawer: Drawer(
        child: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                      style: AppStyle.subWhite,
                    )),
                    Text(' | ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    InkWell(
                        child: Text(
                      'Ghi danh',
                      style: AppStyle.subWhite,
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
            SizedBox(
              height: 10,
            ),
            Slider(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GIỚI THIỆU',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
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
    autoplayes = new List()..length = 10..fillRange(0, 10, false);
    controllers = new List()..length = 10..fillRange(0, 10, new SwiperController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Swiper(
        autoplay: true,
        loop: true,
        itemCount: 3,
        controller: controller,
        pagination: SwiperPagination(
            margin: EdgeInsets.all(12), alignment: Alignment.bottomRight),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset("asset/image/banner_1.png", fit: BoxFit.fill,);
        },
      ),
    );
  }
}
