import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '../../../../core/widgets/custom_error_icon.dart';
import '/src/config/routes/app_router.dart';
import '/src/core/utils/app_colors.dart';

class CatsBreedingItem extends StatelessWidget {
  const CatsBreedingItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(
        CatsBreedingItemDetailsRoute(article: article),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Theme.of(context).primaryColor,
        elevation: 10,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Hero(
                  tag: article.id!,
                  child: CachedNetworkImage(
                    imageUrl: article.coverImage!,
                    errorWidget: (context, url, error) =>
                        const CustomErrorIcon(),
                    width: 100.w,
                    height: 100.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                article.title!,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              InkWell(
                splashColor: AppColors.kPrimaryColor.withOpacity(0.5),
                onTap: () => context.pushRoute(
                  CatsBreedingItemDetailsRoute(article: article),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.touch_app,
                      color: AppColors.kPurpleColor,
                      size: 25,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Visit",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: AppColors.kPurpleColor,
                            fontSize: 18,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
