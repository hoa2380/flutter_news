import 'package:flutter/material.dart';
import 'package:flutter_news/configs/app_colors.dart';

class AppStyle {

  static final TextStyle title = TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600);

  static final TextStyle title2 = TextStyle(
      color: AppColors.colorSecondary,
      fontSize: 28,
      fontWeight: FontWeight.w900);

  static final TextStyle titleUnderline = TextStyle(
      color: Colors.white,
      fontSize: 15,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400);

  static final TextStyle subTitle = TextStyle(
      color: AppColors.colorThirdly,
      fontSize: 22,
      fontWeight: FontWeight.w400);

  static final TextStyle sub = TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400);

  static final TextStyle subUnderline = TextStyle(
      color: Colors.white,
      fontSize: 15,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400);

}
