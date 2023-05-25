import 'package:flutter/material.dart';
import 'package:kitty_cat/core/global/app_colors.dart';

import '../../../../../core/global/app_assets.dart';
import '../../../../../core/global/app_navigation.dart';
import '../../../../../core/models/cats_breeding_item_model.dart';
import '../../views/all_blog.dart';

class ReadAllBlogButton extends StatelessWidget {
  const ReadAllBlogButton({
    super.key,
    required this.details,
  });

  final CatsBreedingModel details;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppNavigation.navigateTo(
        screen: AllBlog(
          title: details.title,
          details: details.details,
        ),
      ),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kPurpleColor,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Read all the blog",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
            Image.asset(AppAssets.buttonArrow),
          ],
        ),
      ),
    );
  }
}
