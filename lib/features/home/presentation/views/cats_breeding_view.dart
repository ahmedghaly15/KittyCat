import 'package:flutter/material.dart';
import 'package:kitty_cat/features/home/presentation/widgets/cats_breeding_view_widgets/cats_breeding_view_body.dart';

import '../../../../core/widgets/arrow_back_button.dart';
import '../../../../core/widgets/fexible_space_container.dart';

class CatsBreedingView extends StatelessWidget {
  const CatsBreedingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cats Breeding"),
        leading: const ArrowBackButton(),
        flexibleSpace: const FexibleSpaceContainer(),
      ),
      body: const CatsBreedingViewBody(),
    );
  }
}
