import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitty_cat/core/global/app_colors.dart';
import 'package:kitty_cat/core/global/app_styles.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
        primaryColor: AppColors.kPrimaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: AppStyles.textStyle28,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          elevation: 0,
          scrolledUnderElevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
          ),
        ),
      );
}
