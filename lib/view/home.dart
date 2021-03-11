import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_news/configs/config.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_news/widget/line_title.dart';
import 'package:flutter_news/widget/slide_image.dart';
import 'package:flutter_news/wp-api.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF66b3c4),
        title: Text('MENU',
          style: TextStyle(color: Colors.white) ,),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Spacer(),
                Container(
                  height: 25,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                      child: Image.network('https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/common/close_sp.png')),
                ),
                SizedBox(width: 10,),
              ],
            ),
            ListTile(
              title: Text('TRANG CHỦ', style: AppStyle.textDrawer,),
            ),
            ListTile(
              title: Text('VỀ CHÚNG TÔI', style: AppStyle.textDrawer),
            ),
            ListTile(
              title: Text('DỊCH VỤ', style: AppStyle.textDrawer),
            ),
            ListTile(
              title: Text('NHÂN SỰ', style: AppStyle.textDrawer),
            ),
            ListTile(
              title: Text('BÀI VIỆT', style: AppStyle.textDrawer),
            ),
            ListTile(
              title: Text('LIÊN HỆ', style: AppStyle.textDrawer),
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
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF66b3c4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Text('Đăng nhập',
                      style: AppStyle.subWhite
                    ),
                    Text('|',
                        style: AppStyle.subWhite
                    ),
                    Text('Ghi danh',
                      style: AppStyle.subWhite
                    ),
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
                children: [
                  SlideImage(),
                  Center(
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
                                style: AppStyle.textWhite
                              ),
                              Flexible(
                                child: Text(' "Mang niềm tin đến doanh nghiệp và người tiều dùng".',
                                  style: AppStyle.textWhite
                                ),
                              ),
                            ],
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
                  style: AppStyle.title
                )
              ],
            ),
            SizedBox(height: 10,),
            LineTitle(),
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
            SizedBox(height: 20,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DỊCH VỤ CỦA CHÚNG TÔI',
                  style: AppStyle.title
                )
              ],
            ),
            SizedBox(height: 10,),
            LineTitle(),
            SizedBox(height: 15,),
            Row(
              children: [
                Flexible(
                    child: Text(
                      'Đam mê cùng năng lực, chúng tôi: Đội ngũ kinh nghiệm nhiệt tình và trách nhiệm, cam kết Phải chú trọng Uy tín, dịch vụ Chất lượng tốt, và cuối cùng luôn lắng nghe khách hàng, không ngừng nỗ lực và cải thiện nhằm mang lại sự thõa mãn nhất đến khách hàng và người tiêu dùng.',
                      textAlign: TextAlign.center,
                    )
                )
              ],
            ),
            Container(
              height: 500,
              padding: EdgeInsets.only(top: 24),
              child: FutureBuilder(
                future: fetchWpPostsCategory(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map wppost = snapshot.data[index];
                          return PostTile(
                              name: wppost['name'],
                          );
                        }
                        );
                  }

                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class PostTile extends StatefulWidget {
  final String name;
  PostTile({this.name});

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Color(0xff568427),
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Text(
              widget.name,
              style: AppStyle.textCate,
            ),
          ],
        ),
      ),
    );
  }
}


