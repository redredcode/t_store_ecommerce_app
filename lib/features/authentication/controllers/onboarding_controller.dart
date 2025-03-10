import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store_ecommerce_app/features/authentication/screens/login/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // variables
  final pageController = PageController();
   RxInt currentPageIndex = 0.obs;

  // Update the current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index & jump to the next page
  void nextPage() {
    if (currentPageIndex.value ==2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = ++currentPageIndex.value; // or- currentPageIndex.value + 1
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
