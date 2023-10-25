// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AllBlogRoute.name: (routeData) {
      final args = routeData.argsAs<AllBlogRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AllBlogView(
          key: args.key,
          title: args.title,
          details: args.details,
        ),
      );
    },
    CatsBreedingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatsBreedingView(),
      );
    },
    CatsBreedingItemDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CatsBreedingItemDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatsBreedingItemDetailsView(
          key: args.key,
          model: args.model,
        ),
      );
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailsView(
          key: args.key,
          details: args.details,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
  };
}

/// generated route for
/// [AllBlogView]
class AllBlogRoute extends PageRouteInfo<AllBlogRouteArgs> {
  AllBlogRoute({
    Key? key,
    required String title,
    required String details,
    List<PageRouteInfo>? children,
  }) : super(
          AllBlogRoute.name,
          args: AllBlogRouteArgs(
            key: key,
            title: title,
            details: details,
          ),
          initialChildren: children,
        );

  static const String name = 'AllBlogRoute';

  static const PageInfo<AllBlogRouteArgs> page =
      PageInfo<AllBlogRouteArgs>(name);
}

class AllBlogRouteArgs {
  const AllBlogRouteArgs({
    this.key,
    required this.title,
    required this.details,
  });

  final Key? key;

  final String title;

  final String details;

  @override
  String toString() {
    return 'AllBlogRouteArgs{key: $key, title: $title, details: $details}';
  }
}

/// generated route for
/// [CatsBreedingView]
class CatsBreedingRoute extends PageRouteInfo<void> {
  const CatsBreedingRoute({List<PageRouteInfo>? children})
      : super(
          CatsBreedingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatsBreedingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatsBreedingItemDetailsView]
class CatsBreedingItemDetailsRoute
    extends PageRouteInfo<CatsBreedingItemDetailsRouteArgs> {
  CatsBreedingItemDetailsRoute({
    Key? key,
    required CatsBreedingModel model,
    List<PageRouteInfo>? children,
  }) : super(
          CatsBreedingItemDetailsRoute.name,
          args: CatsBreedingItemDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CatsBreedingItemDetailsRoute';

  static const PageInfo<CatsBreedingItemDetailsRouteArgs> page =
      PageInfo<CatsBreedingItemDetailsRouteArgs>(name);
}

class CatsBreedingItemDetailsRouteArgs {
  const CatsBreedingItemDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final CatsBreedingModel model;

  @override
  String toString() {
    return 'CatsBreedingItemDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [DetailsView]
class DetailsRoute extends PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    Key? key,
    required CatsBreedingModel details,
    List<PageRouteInfo>? children,
  }) : super(
          DetailsRoute.name,
          args: DetailsRouteArgs(
            key: key,
            details: details,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const PageInfo<DetailsRouteArgs> page =
      PageInfo<DetailsRouteArgs>(name);
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    this.key,
    required this.details,
  });

  final Key? key;

  final CatsBreedingModel details;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
