import 'dart:ui';

class AppColors {
  static final Color colorPrimary = HexColor.fromHex('009b00');
  static final Color colorSecondary = HexColor.fromHex('28212e');
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
