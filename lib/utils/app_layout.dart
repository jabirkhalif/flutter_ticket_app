import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight(double pixels) {
    double x = getHeight() / pixels;
    return getHeight() / x;
  }

  static GetWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
