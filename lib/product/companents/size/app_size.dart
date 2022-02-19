import 'package:flutter/material.dart';

class SizeHelper {
  static Size getFullSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getWidthSize(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeightSize(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
