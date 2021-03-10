import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('MENU',
          style: TextStyle(color: Colors.white) ,),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('TRANG CHỦ'),
            ),
            ListTile(
              title: Text('VỀ CHÚNG TÔI'),
            ),
            ListTile(
              title: Text('DỊCH VỤ'),
            ),
            ListTile(
              title: Text('NHÂN SỰ'),
            ),
            ListTile(
              title: Text('BÀI VIỆT'),
            ),
            ListTile(
              title: Text('LIÊN HỆ'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                 width: 80,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("asset/image/logo.png"),
                     fit: BoxFit.cover
                   )
                 ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ SINH THÁI VIỆT VIET ELO',
                    style:TextStyle(fontSize: 18, color: Color(0xFF087135), fontWeight: FontWeight.bold ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                  color: Color(0xFF66b3c4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Text('Đăng nhập',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Text('|',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text('Ghi danh',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height:150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('asset/image/banner-home.png', fit: BoxFit.cover),
                  ClipRRect( // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 50,
                              color: Color.fromRGBO(86, 132, 39, 0.80),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sứ mệnh : ',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(' "Mang niềm tin đến doanh nghiệp và người tiều dùng".',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GIỚI THIỆU',
                  style:TextStyle(fontSize: 25, color: Color(0xFF4999af), fontWeight: FontWeight.bold ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Html(
              data: """
              <div class="content_intro">
                    <p class="paragraph"><span class="bold">Công ty TNHH Tư vấn &amp; Đầu tư Sinh Thái Việt</span> hay <span class="color">Elodichvu</span> là một những thương hiệu tại Việt Nam, chuyên cung cấp các dịch vụ tư vấn pháp lý đầu tư dự án, các loại cấp phép, các dịch vụ du lịch nghỉ dưỡng, thực phẩm hữu cơ an toàn; PR thương hiệu và xây dựng chiến lược marketing online uy tín và chất lượng hiện nay.</p>
                    <p class="paragraph">Được sáng lập bởi Mr Trương Đình Thạnh, với 100% vốn Việt Nam, Mr Thạnh tốt nghiệp thạc sỹ khoa Quản lý kinh doanh quốc tế – Đại học hoa khọc ứng dụng Áo (2013-2015), và tu nghiệp Chương trình Marketing Chiến lược tại Nước Pháp (1997-1998).</p>
                    <p class="paragraph">Với bề dày hơn 15 năm kinh nghiệm trong các lĩnh vực marketing và tư vấn quản lý các dự án đầu tư trong nước và quốc tế, có mạng lưới quan hệ rộng các đối tác lớn, như : “Tập đoàn chăn nuôi tôm CP – Thái Lan”; “Công ty Tập đoàn Quế Lâm”; “Dự án bất động sản của tập đoàn đất Đất Xanh, Apec”; “Công ty Sản xuất giấy Shaijo’; ”Tập đoàn may mặc Scavi và rất nhiều dự án lớn nhỏ trong và ngoài nước”; ... </p>
                </div>
              """,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFF568427),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Center(child: Text('Xem thêm', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}


