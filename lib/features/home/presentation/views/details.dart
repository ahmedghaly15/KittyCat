import 'package:flutter/material.dart';
import 'package:kitty_cat/core/models/cats_breeding_item_model.dart';

import '../widgets/details_widgets/read_all_blog_button.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.details}) : super(key: key);

  final CatsBreedingModel details;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 0.45,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            details.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            details.details,
            maxLines: 15,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          ReadAllBlogButton(details: details),
        ],
      ),
    );
  }
}
