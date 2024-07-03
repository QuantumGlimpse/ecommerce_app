import 'package:ecommerce_app/feautures/authentication/screens/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingControllers extends GetxController {
  static OnBoardingControllers get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex == 2) {
      Get.to(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  bool shiftButton() {
    if (currentPageIndex == 2) {
      return true;
    } else {
      return false;
    }
  }
}
