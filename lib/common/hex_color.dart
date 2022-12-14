import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    if (hexColor.isEmpty) return int.parse('ffffffff', radix: 16);
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.tryParse(hexColor, radix: 16) ??
        int.parse('ffffffff', radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
