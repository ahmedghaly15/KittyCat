import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static double get fadeInUpValue => 20.h;
  static double get fadeInHorizontalValue => 200.w;
  static Widget Function(
          BuildContext, Animation<double>, Animation<double>, Widget)?
      get transitionsBuilder => TransitionsBuilders.slideLeftWithFade;
  static int get transitionDuration => 275;
}
