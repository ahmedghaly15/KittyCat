import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '../widgets/cats_breeding_item_details_view_body.dart';

@RoutePage()
class CatsBreedingItemDetailsView extends StatelessWidget {
  const CatsBreedingItemDetailsView({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatsBreedingItemDetailsViewBody(article: article),
    );
  }
}
