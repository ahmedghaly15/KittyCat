import 'package:flutter/material.dart';

import '../widgets/flexible_space_container.dart';

class Helper {
  static AppBar buildAppBar({
    required String title,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return AppBar(
      title: Text(title),
      leading: leading,
      flexibleSpace: const FlexibleSpaceContainer(),
      actions: actions,
    );
  }
}
