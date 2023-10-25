import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/cats_breeding_item_model.dart';
import '../widgets/cats_breeding_item_details_view_body.dart';

@RoutePage()
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
