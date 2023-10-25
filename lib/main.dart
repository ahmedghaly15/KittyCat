import 'package:flutter/material.dart';

import '/src/core/utils/service_locator.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setUpServiceLocator();

  runApp(const KittyCat());
}
