import 'package:flutter/material.dart';
import 'package:kitty_cat/core/models/cats_breeding_item_model.dart';
import 'package:kitty_cat/features/home/presentation/widgets/cats_breeding_item_details_view_widgets/cats_breeding_item_details_view_body.dart';

class CatsBreedingItemDetailsView extends StatelessWidget {
  const CatsBreedingItemDetailsView({super.key, required this.model});

  final CatsBreedingModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatsBreedingItemDetailsViewBody(model: model),
    );
  }
}
