import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/core/global/app_navigation.dart';
import 'package:kitty_cat/features/home/presentation/views/details.dart';

import '../../../../../core/models/cats_breeding_item_model.dart';

class CatsBreedingItemDetailsViewBody extends StatelessWidget {
  const CatsBreedingItemDetailsViewBody({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CatsBreedingModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Hero(
              tag: model.id,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.maxFinite,
                child: CachedNetworkImage(
                  imageUrl: model.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
              onPressed: () => AppNavigation.getBack(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: Details(details: model),
          ),
        ],
      ),
    );
  }
}
