import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitty_cat/src/config/routes/app_router.dart';
import 'package:kitty_cat/src/core/utils/service_locator.dart';
import 'package:reusable_components/reusable_components.dart';

import 'app_routes_observer.dart';
import 'src/core/utils/app_strings.dart';
import 'src/config/themes/app_themes.dart';

class KittyCat extends StatelessWidget {
  const KittyCat({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: AppThemes.lightTheme(),
        routerConfig: serviceLocator.get<AppRouter>().config(
              navigatorObservers: () => <NavigatorObserver>[
                AppRoutesObserver(),
                AutoRouteObserver(),
              ],
            ),
      ),
    );
  }
}
