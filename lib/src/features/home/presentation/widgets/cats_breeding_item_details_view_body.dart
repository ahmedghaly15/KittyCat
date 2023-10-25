import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/src/core/widgets/custom_error_icon.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '../views/details.dart';

class CatsBreedingItemDetailsViewBody extends StatelessWidget {
  const CatsBreedingItemDetailsViewBody({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Hero(
              tag: article.id!,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.maxFinite,
                child: CachedNetworkImage(
                  imageUrl: article.coverImage!,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const CustomErrorIcon(),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () => context.back(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: DetailsView(details: article),
          ),
        ],
      ),
    );
  }
}
