import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget buildCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/brand logo small.png', // Path to your logo
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/icon notification.png', // Path to your notification icon
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}