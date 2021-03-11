import 'package:flutter/material.dart';

class AppStyle {
  //Product All
  static final TextStyle title = TextStyle(
      color: Colors.black.withOpacity(0.80),
      fontSize: 20,
      fontWeight: FontWeight.w600);
  static final TextStyle productName = TextStyle(
      color: Colors.black.withOpacity(0.80),
      fontSize: 15,
      fontWeight: FontWeight.w600);
  static final TextStyle subMore = TextStyle(
      color: Colors.blue,
      fontSize: 15,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400);
  static final TextStyle price =
      TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.w600);

  //Product Detail
  static final TextStyle priceDetail =
      TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w600);
  static final TextStyle priceSale = TextStyle(
      color: Colors.black.withOpacity(0.80),
      fontSize: 10,
      decoration: TextDecoration.lineThrough,
      fontWeight: FontWeight.w600);
  static final TextStyle priceSaleDetail = TextStyle(
      color: Colors.black.withOpacity(0.80),
      fontSize: 14,
      decoration: TextDecoration.lineThrough,
      fontWeight: FontWeight.w600);
  static final TextStyle subDetail =
      TextStyle(color: Colors.black.withOpacity(0.80), fontSize: 18);
  static final TextStyle sttStocking = TextStyle(
      color: Colors.green.withOpacity(0.90),
      fontSize: 18,
      fontWeight: FontWeight.w600);
  static final TextStyle sttOutOfStocking = TextStyle(
      color: Colors.red.withOpacity(0.90),
      fontSize: 18,
      fontWeight: FontWeight.w600);
  static final TextStyle detailComment = TextStyle(
      color: Colors.blue.withOpacity(0.90),
      fontSize: 18,
      fontWeight: FontWeight.w600);
  static final TextStyle detailTxtGift = TextStyle(
      color: Colors.blue[700], fontSize: 18, fontWeight: FontWeight.bold);
  static final TextStyle brandSub =
      TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w400);
  static final TextStyle phoneNumber = TextStyle(
      color: Colors.blue,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);

  static final TextStyle titleWhite = TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.bold);
  static final TextStyle sub = TextStyle(
      color: Colors.black.withOpacity(0.80),
      fontSize: 16,
      fontWeight: FontWeight.w600);
  static final TextStyle subUnderline = TextStyle(
      color: Colors.black.withOpacity(0.80),
      decoration: TextDecoration.underline,
      fontSize: 18,
      fontWeight: FontWeight.w600);
  static final TextStyle subWhite =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
  static final TextStyle text = TextStyle(
      color: Colors.black.withOpacity(0.70), fontWeight: FontWeight.w500);
  static final TextStyle textWhite = TextStyle(
      color: Colors.white.withOpacity(0.70), fontWeight: FontWeight.w500);
  static final TextStyle tab = TextStyle(
    color: Colors.black54,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle tabSelected = TextStyle(
    color: Colors.red,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
