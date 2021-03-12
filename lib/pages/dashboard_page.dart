import 'package:flutter/material.dart';
import 'package:flutter_news/configs/configs.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
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
                ),
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
        ],
      ),
    );
  }
}
