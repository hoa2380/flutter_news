import 'package:flutter/material.dart';

class LineTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        child: Center(
          child: Image.network('https://design.bpotech.com.vn/elodichvu/wp-content/themes/elodichvu/img/common/line_title.png'),
        )
    );
  }
}
