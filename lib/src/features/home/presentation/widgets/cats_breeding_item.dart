import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/cats_breeding_item_model.dart';
import '/src/config/routes/app_router.dart';
import '/src/core/utils/app_colors.dart';

class CatsBreedingItem extends StatelessWidget {
  const CatsBreedingItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CatsBreedingModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushRoute(
        CatsBreedingItemDetailsRoute(model: model),
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
                  tag: model.id,
                  child: CachedNetworkImage(
                    imageUrl: model.imageUrl,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              InkWell(
                splashColor: AppColors.kPrimaryColor.withOpacity(0.5),
                onTap: () => context.pushRoute(
                  CatsBreedingItemDetailsRoute(model: model),
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
