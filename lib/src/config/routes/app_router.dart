import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/models/cats_breeding_item_model.dart';
import '../../features/home/presentation/views/all_blog.dart';
import '../../features/home/presentation/views/cats_breeding_item_details_view.dart';
import '../../features/home/presentation/views/cats_breeding_view.dart';
import '../../features/home/presentation/views/details.dart';
import '../../features/home/presentation/views/home_view.dart';
import '/src/core/utils/app_constants.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        _myCustomRoute(page: CatsBreedingRoute.page),
        _myCustomRoute(page: CatsBreedingItemDetailsRoute.page),
        _myCustomRoute(page: DetailsRoute.page),
        _myCustomRoute(page: AllBlogRoute.page),
      ];

  CustomRoute _myCustomRoute({required PageInfo<dynamic> page}) {
    return CustomRoute(
      page: page,
      transitionsBuilder: AppConstants.transitionsBuilder,
      durationInMilliseconds: AppConstants.transitionDuration,
    );
  }
}

@RoutePage(name: 'HomeRoute')
class Home extends AutoRouter {
  const Home({super.key});
}

@RoutePage(name: 'CatsBreedingRoute')
class CatsBreeding extends AutoRouter {
  const CatsBreeding({super.key});
}

@RoutePage(name: 'CatsBreedingItemDetailsRoute')
class CatsBreedingItemDetails extends AutoRouter {
  const CatsBreedingItemDetails({super.key});
}

@RoutePage(name: 'DetailsRoute')
class Details extends AutoRouter {
  const Details({super.key});
}

@RoutePage(name: 'AllBlogRoute')
class AllBlog extends AutoRouter {
  const AllBlog({super.key});
}
