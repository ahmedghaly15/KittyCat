import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../src/core/utils/app_text_styles.dart';
import '../../../../core/models/card_item_model.dart';
import '/src/config/routes/app_router.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.model,
    required this.index,
  });

  final CardItemModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          context.pushRoute(const CatsBreedingRoute());
        }
        // TODO: according to index we navigate to the screen
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(model.image),
              ),
              const SizedBox(width: 10),
              Text(model.title, style: AppTextStyles.textStyle18Semibold),
            ],
          ),
        ),
      ),
    );
  }
}
