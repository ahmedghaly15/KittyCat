import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_text_styles.dart';
import '/src/core/utils/app_colors.dart';
import '/src/core/utils/app_strings.dart';

class AppThemes {
  static ThemeData lightTheme() => ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        brightness: Brightness.light,
        primaryColor: AppColors.kPrimaryColor,
        fontFamily: AppStrings.fontFamily,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: AppTextStyles.textStyle28Semibold,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70.h,
          elevation: 0,
          scrolledUnderElevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
          ),
        ),
      );
}
