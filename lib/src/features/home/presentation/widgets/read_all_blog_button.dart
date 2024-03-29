import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reusable_components/reusable_components.dart';

import '../../data/models/article_model.dart';
import '/src/config/routes/app_router.dart';
import '/src/core/utils/app_colors.dart';
import '/src/core/utils/app_text_styles.dart';

class ReadAllBlogButton extends StatelessWidget {
  const ReadAllBlogButton({
    super.key,
    required this.details,
  });

  final ArticleModel details;

  @override
  Widget build(BuildContext context) {
    return MyCustomButton(
      height: 50.h,
      width: double.infinity,
      borderRadius: BorderRadius.circular(32.0.r),
      backgroundColor: AppColors.kPrimaryColor,
      onPressed: () => context.pushRoute(
        AllBlogRoute(
          title: details.title!,
          details: details.body!,
        ),
      ),
      hasPrefix: false,
      child: Center(
        child: Text(
          'Read All Blog',
          style: AppTextStyles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
