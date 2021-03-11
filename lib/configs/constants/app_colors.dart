import 'dart:ui';

class AppColors {
  static final Color colorPrimary = HexColor.fromHex('3BA7F8');
  static final Color colorSecondary = HexColor.fromHex('66B3C4');
  static final Color colorThirdly = HexColor.fromHex('D16831');
}

class HexColor {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    // ignore: always_put_control_body_on_new_line
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
