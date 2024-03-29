// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_app/features/authentication/screen/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get Instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump To the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update current index and jump to the last page
  void skiPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
