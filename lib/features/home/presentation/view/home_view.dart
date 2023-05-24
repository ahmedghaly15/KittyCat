import 'package:flutter/material.dart';

import '../../../../core/widgets/fexible_space_container.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        flexibleSpace: const FexibleSpaceContainer(),
      ),
      body: const HomeViewBody(),
    );
  }
}
