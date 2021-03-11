import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SlideImage extends StatefulWidget {
  @override
  _SlideImageState createState() => _SlideImageState();
}

class _SlideImageState extends State<SlideImage> {
  final imageList = [
    'https://design.bpotech.com.vn/elodichvu/wp-content/uploads/2017/09/advisement-bg-1024x380.png',
    'https://design.bpotech.com.vn/elodichvu/wp-content/uploads/2017/09/banner_img-1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imageList[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imageList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
