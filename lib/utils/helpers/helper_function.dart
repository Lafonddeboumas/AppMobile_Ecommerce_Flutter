import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunction {
  //Début
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
