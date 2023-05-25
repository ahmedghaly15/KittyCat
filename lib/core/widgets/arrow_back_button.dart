import 'package:flutter/material.dart';

import '../global/app_navigation.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => AppNavigation.getBack(),
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
