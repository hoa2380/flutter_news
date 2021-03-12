import 'dart:ffi';
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
          style: AppStyle.title,
        ),
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
                      style: AppStyle.sub,
                    )),
                    Text(' | ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
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
            SizedBox(
              height: 10,
            ),
            Slider(),
            Container(
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
                   padding: EdgeInsets.symmetric(horizontal: 14),
                   child: Column(
                     children: [
                       RichText(
                         textAlign: TextAlign.justify,
                         text: TextSpan(
                           children: [
                             WidgetSpan(child: Image.asset("asset/image/icon-arrow.png")),
                             TextSpan(text: ' CÔNG TY TNHH TƯ VẤN & ĐẦU TƯ SINH THÁI VIỆT', style: AppStyle.subBlack),
                             TextSpan(text: ' hay', style: AppStyle.subBlack),
                             TextSpan(text: ' Elodichvu', style: AppStyle.subOrange),
                             TextSpan(text: ' là một những thương hiệu tại Việt Nam, chuyên cung cấp các dịch vụ tư vấn pháp lý đầu tư dự án, các loại cấp phép, các dịch vụ du lịch nghỉ dưỡng, thực phẩm hữu cơ an toàn; PR thương hiệu và xây dựng chiến lược marketing online uy tín và chất lượng hiện nay.', style: AppStyle.subBlack),
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
                             WidgetSpan(child: Image.asset("asset/image/icon-arrow.png")),
                             TextSpan(text: ' Được sáng lập bởi Mr Trương Đình Thạnh, với 100% vốn Việt Nam, Mr Thạnh tốt nghiệp thạc sỹ khoa Quản lý kinh doanh quốc tế – Đại học hoa khọc ứng dụng Áo (2013-2015), và tu nghiệp Chương trình Marketing Chiến lược tại Nước Pháp (1997-1998).', style: AppStyle.subBlack),
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
                             WidgetSpan(child: Image.asset("asset/image/icon-arrow.png")),
                             TextSpan(text: ' Với bề dày hơn 15 năm kinh nghiệm trong các lĩnh vực marketing và tư vấn quản lý các dự án đầu tư trong nước và quốc tế, có mạng lưới quan hệ rộng các đối tác lớn, như : “Tập đoàn chăn nuôi tôm CP – Thái Lan”; “Công ty Tập đoàn Quế Lâm”; “Dự án bất động sản của tập đoàn đất Đất Xanh, Apec”; “Công ty Sản xuất giấy Shaijo’; ”Tập đoàn may mặc Scavi và rất nhiều dự án lớn nhỏ trong và ngoài nước”; ...', style: AppStyle.subBlack),
                           ],
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                color: Colors.black54,
                iconSize: 38,
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Trang chủ", style: AppStyle.subTitle,),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Về chúng tôi", style: AppStyle.subTitle,),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Dịch vụ", style: AppStyle.subTitle,),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Nhân sự", style: AppStyle.subTitle,),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Bài viết", style: AppStyle.subTitle,),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: AppColors.colorPrimary,
                    // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                  ),
                  onPressed: () {},
                  child: Text("Liên hệ", style: AppStyle.subTitle,),
                ),
              ],
            ),
          ),
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
              return Image.asset("asset/image/banner_1.png", fit: BoxFit.fill,);
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
                      TextSpan(text: 'Sứ mệnh: ', style: AppStyle.subUnderline),
                      TextSpan(text: ' “Mang niềm tin đến doanh nghiệp và người tiêu dùng”. ', style: AppStyle.sub),
                    ],
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
