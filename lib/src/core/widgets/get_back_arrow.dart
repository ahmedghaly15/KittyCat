import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GetBackArrow extends StatelessWidget {
  const GetBackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.back(),
      child: const Icon(Icons.arrow_back_ios),
    );
  }
}
