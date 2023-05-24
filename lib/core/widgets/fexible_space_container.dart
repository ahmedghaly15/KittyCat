import 'package:flutter/material.dart';

import '../global/app_colors.dart';

class FexibleSpaceContainer extends StatelessWidget {
  const FexibleSpaceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }
}
