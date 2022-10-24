// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:stacked/stacked.dart' as _i10;

import '../views/screens/home/home_view.dart' as _i1;
import '../views/screens/level1/level1_view.dart' as _i2;
import '../views/screens/level1/materii/aritmetica1_view.dart' as _i5;
import '../views/screens/level1/materii/geometrie1_view.dart' as _i6;
import '../views/screens/level1/materii/romana1_view.dart' as _i7;
import '../views/screens/level2/level2_view.dart' as _i3;
import '../views/screens/level3/level3_view.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      final args =
          routeData.argsAs<HomeViewArgs>(orElse: () => const HomeViewArgs());
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.HomeView(
          key: args.key,
          initialIndex: args.initialIndex,
        ),
        transitionsBuilder: _i10.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Level1View.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.Level1View(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Level2View.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.Level2View(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Level3View.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.Level3View(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Aritmetica1View.name: (routeData) {
      final args = routeData.argsAs<Aritmetica1ViewArgs>(
          orElse: () => const Aritmetica1ViewArgs());
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.Aritmetica1View(key: args.key),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Geometrie1View.name: (routeData) {
      final args = routeData.argsAs<Geometrie1ViewArgs>(
          orElse: () => const Geometrie1ViewArgs());
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.Geometrie1View(key: args.key),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Romana1View.name: (routeData) {
      final args = routeData.argsAs<Romana1ViewArgs>(
          orElse: () => const Romana1ViewArgs());
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.Romana1View(key: args.key),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeView.name,
          path: '/',
        ),
        _i8.RouteConfig(
          Level1View.name,
          path: '/level1',
          children: [
            _i8.RouteConfig(
              Aritmetica1View.name,
              path: 'aritmetica',
              parent: Level1View.name,
            ),
            _i8.RouteConfig(
              Geometrie1View.name,
              path: 'geometrie',
              parent: Level1View.name,
            ),
            _i8.RouteConfig(
              Romana1View.name,
              path: 'romana',
              parent: Level1View.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          Level2View.name,
          path: '/level2',
        ),
        _i8.RouteConfig(
          Level3View.name,
          path: '/level3',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i8.PageRouteInfo<HomeViewArgs> {
  HomeView({
    _i9.Key? key,
    int? initialIndex,
  }) : super(
          HomeView.name,
          path: '/',
          args: HomeViewArgs(
            key: key,
            initialIndex: initialIndex,
          ),
        );

  static const String name = 'HomeView';
}

class HomeViewArgs {
  const HomeViewArgs({
    this.key,
    this.initialIndex,
  });

  final _i9.Key? key;

  final int? initialIndex;

  @override
  String toString() {
    return 'HomeViewArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i2.Level1View]
class Level1View extends _i8.PageRouteInfo<void> {
  const Level1View({List<_i8.PageRouteInfo>? children})
      : super(
          Level1View.name,
          path: '/level1',
          initialChildren: children,
        );

  static const String name = 'Level1View';
}

/// generated route for
/// [_i3.Level2View]
class Level2View extends _i8.PageRouteInfo<void> {
  const Level2View()
      : super(
          Level2View.name,
          path: '/level2',
        );

  static const String name = 'Level2View';
}

/// generated route for
/// [_i4.Level3View]
class Level3View extends _i8.PageRouteInfo<void> {
  const Level3View()
      : super(
          Level3View.name,
          path: '/level3',
        );

  static const String name = 'Level3View';
}

/// generated route for
/// [_i5.Aritmetica1View]
class Aritmetica1View extends _i8.PageRouteInfo<Aritmetica1ViewArgs> {
  Aritmetica1View({_i9.Key? key})
      : super(
          Aritmetica1View.name,
          path: 'aritmetica',
          args: Aritmetica1ViewArgs(key: key),
        );

  static const String name = 'Aritmetica1View';
}

class Aritmetica1ViewArgs {
  const Aritmetica1ViewArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'Aritmetica1ViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.Geometrie1View]
class Geometrie1View extends _i8.PageRouteInfo<Geometrie1ViewArgs> {
  Geometrie1View({_i9.Key? key})
      : super(
          Geometrie1View.name,
          path: 'geometrie',
          args: Geometrie1ViewArgs(key: key),
        );

  static const String name = 'Geometrie1View';
}

class Geometrie1ViewArgs {
  const Geometrie1ViewArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'Geometrie1ViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.Romana1View]
class Romana1View extends _i8.PageRouteInfo<Romana1ViewArgs> {
  Romana1View({_i9.Key? key})
      : super(
          Romana1View.name,
          path: 'romana',
          args: Romana1ViewArgs(key: key),
        );

  static const String name = 'Romana1View';
}

class Romana1ViewArgs {
  const Romana1ViewArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'Romana1ViewArgs{key: $key}';
  }
}
