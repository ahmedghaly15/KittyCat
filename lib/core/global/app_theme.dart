import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitty_cat/core/global/app_colors.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
        primaryColor: AppColors.kPrimaryColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
            statusBarColor: AppColors.scaffoldBackgroundColor,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      );
}
