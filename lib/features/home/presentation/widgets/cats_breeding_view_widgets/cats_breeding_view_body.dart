import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../../core/models/cats_breeding_item_model.dart';
import 'cats_breeding_item.dart';

class CatsBreedingViewBody extends StatelessWidget {
  const CatsBreedingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        reverse: false,
        primary: true,
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.start,
        clipBehavior: Clip.hardEdge,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisExtent: 300,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        children: catsBreedingModel.map((data) {
          return AnimationConfiguration.staggeredGrid(
            position: data.id,
            duration: const Duration(milliseconds: 750),
            columnCount: catsBreedingModel.length,
            child: ScaleAnimation(
              child: FadeInAnimation(
                child: CatsBreedingItem(model: data),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
