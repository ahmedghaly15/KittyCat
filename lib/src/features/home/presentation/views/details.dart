import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '../widgets/read_all_blog_button.dart';

@RoutePage()
class DetailsView extends StatelessWidget {
  const DetailsView({Key? key, required this.details}) : super(key: key);

  final ArticleModel details;

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
            details.title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            details.body!,
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
