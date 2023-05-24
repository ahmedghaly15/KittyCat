import 'package:flutter/material.dart';
import 'package:kitty_cat/core/models/card_item_model.dart';

import '../../../../core/global/app_styles.dart';

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
        // TODO: according to index we navigate to the screen
      },
      child: Card(
        color: const Color.fromARGB(255, 255, 231, 219),
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
              Text(model.title, style: AppStyles.textStyle25),
            ],
          ),
        ),
      ),
    );
  }
}
