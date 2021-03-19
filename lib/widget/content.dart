import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff88a967),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text(
            "KINH NGHIỆM",
            style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
            ),
          ),
          Image.network("https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/common/line_title_white.png"),
          SizedBox(height: 20,),
          Image.network("https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/index/area3_img1.png"),
          SizedBox(height: 10,),
          Text(
            "500",
            style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white
            ),
          ),
          Text(
            "Dự án đầu tư",
            style: TextStyle(
                fontSize: 18, color: Colors.white
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Divider(),
          ),
          Image.network("https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/index/area3_img2.png"),
          SizedBox(height: 10,),
          Text(
            "25 000",
            style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white
            ),
          ),
          Text(
            "Đơn vị liên hệ tư vấn",
            style: TextStyle(
                fontSize: 18, color: Colors.white
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Divider(),
          ),
          Image.network("https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/index/area3_img3.png"),
          SizedBox(height: 10,),
          Text(
            "100 000",
            style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white
            ),
          ),
          Text(
            "Đơn vị đăng kí hợp tác",
            style: TextStyle(
                fontSize: 18, color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
