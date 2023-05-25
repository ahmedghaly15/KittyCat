import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigation {
  static void navigateTo({
    required Widget screen,
  }) {
    Get.to(
      screen,
      transition: Transition.rightToLeft,
    );
  }

  static void getBack() {
    Get.back();
  }

  static void navigateAndFinish({
    required Widget screen,
  }) {
    Get.off(
      screen,
      transition: Transition.rightToLeft,
    );
  }

  static void navigateAndFinishAll({
    required Widget screen,
  }) {
    Get.offAll(
      () => screen,
      transition: Transition.rightToLeft,
    );
  }
}
