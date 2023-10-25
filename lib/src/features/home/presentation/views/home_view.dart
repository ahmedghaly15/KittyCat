import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/helper.dart';
import '/src/features/home/presentation/widgets/home_view_body.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.buildAppBar(title: 'Home'),
      body: const HomeViewBody(),
    );
  }
}
