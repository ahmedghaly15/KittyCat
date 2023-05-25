import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitty_cat/core/global/app_texts.dart';
import 'package:kitty_cat/core/global/app_theme.dart';
import 'package:kitty_cat/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const KittyCat());
}

class KittyCat extends StatelessWidget {
  const KittyCat({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppTheme.appTheme(),
      home: const HomeView(),
    );
  }
}
