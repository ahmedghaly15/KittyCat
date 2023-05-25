import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:kitty_cat/core/models/card_item_model.dart';

import 'card_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: cardsDummyData.length,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(milliseconds: 750),
          child: SlideAnimation(
            horizontalOffset: 300,
            child: FadeInAnimation(
              child: CardItem(
                model: cardsDummyData[index],
                index: index,
              ),
            ),
          ),
        );
      },
    );
  }
}
