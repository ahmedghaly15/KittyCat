import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '/src/core/utils/service_locator.dart';
import '/app_bloc_observer.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setUpServiceLocator();

  Bloc.observer = AppBlocObserver();

  runApp(const KittyCat());
}
