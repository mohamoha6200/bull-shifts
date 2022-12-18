import 'package:bull_shifts/presentation/common/routes/customPageRoute.dart';
import 'package:bull_shifts/presentation/features/shift_details/shift_details_screen.dart';
import 'package:bull_shifts/presentation/features/splash/splash_screen.dart';
import 'package:bull_shifts/presentation/features/tabbed_home/tabbed_home_screen.dart';
import 'package:flutter/material.dart';
import 'route_constants.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        RouteList.initial: (context) => const SplashScreen(),
        RouteList.tabbedHomeScreen: (context) => const TabbedHomeScreen(),
        RouteList.shiftDetailsScreen: (context) => const ShiftDetailsScreen(),
      };

  static getRouteTransition(
      Widget Function(BuildContext) builder, settings, String routeName) {
    if (routeName == RouteList.shiftDetailsScreen) {
      return CustomRouteFactory.slide(builder, settings,
          startOffset: const Offset(1, 0), curve: Curves.easeInOutCubic);
    } else {
      return CustomRouteFactory.fade(builder, settings);
    }
  }
}
