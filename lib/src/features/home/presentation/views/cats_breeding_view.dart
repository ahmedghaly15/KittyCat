import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitty_cat/src/features/home/presentation/widgets/cats_breeding_view_body.dart';
import 'package:kitty_cat/src/core/widgets/get_back_arrow.dart';

import '../../../../core/helpers/helper.dart';

@RoutePage()
class CatsBreedingView extends StatelessWidget {
  const CatsBreedingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.buildAppBar(
        title: 'Cats Breeding',
        leading: const GetBackArrow(),
      ),
      body: const CatsBreedingViewBody(),
    );
  }
}
