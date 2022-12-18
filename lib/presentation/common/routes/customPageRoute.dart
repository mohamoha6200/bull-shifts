import 'package:flutter/material.dart';

class CustomPageRouteBuilder<T> extends PageRouteBuilder<T> {
  final WidgetBuilder? builder;
  @override
  final RouteSettings settings;

  CustomPageRouteBuilder({
    this.builder,
    required this.settings,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              builder!(context),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var curve = Curves.ease;
            var tween =
                Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));
            return FadeTransition(
              opacity: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 750),
          settings: settings,
        );
}

class CustomRouteFactory {
  static const Duration defaultDuration = Duration(milliseconds: 450);
  static const Curve defaultEase = Curves.easeOut;

  static Route fade(Function childBuilder, RouteSettings settings,
      {Duration? duration, Curve? curve}) {
    return PageRouteBuilder(
      transitionDuration: duration ?? defaultDuration,
      pageBuilder: (context, animation, secondaryAnimation) =>
          childBuilder(context),
      settings: settings,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(parent: animation, curve: curve ?? defaultEase),
          ),
          child: child,
        );
      },
    );
  }

  static Route push(Function childBuilder, RouteSettings settings,
      [Duration? duration,
      Curve? ease,
      Offset startOffset = const Offset(1, 0)]) {
    return slide(childBuilder, settings,
        duration: duration,
        curve: ease,
        startOffset: startOffset,
        pushOldView: true);
  }

  static Route slide(Function childBuilder, RouteSettings settings,
      {Duration? duration,
      Curve? curve,
      Offset startOffset = const Offset(1, 0),
      bool pushOldView = false}) {
    return PageRouteBuilder(
      transitionDuration: duration ?? defaultDuration,
      pageBuilder: (context, animation, secondaryAnimation) =>
          childBuilder(context),
      settings: settings,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Create slide-in transition
        SlideTransition inTransition = SlideTransition(
          position: Tween<Offset>(begin: startOffset, end: Offset.zero).animate(
              CurvedAnimation(parent: animation, curve: curve ?? defaultEase)),
          child: child,
        );

        SlideTransition? outTransition;
        if (pushOldView) {
          // Flip the offset, so we end in the reverse position from where we started
          Offset endOffset = Offset(startOffset.dx * -1, startOffset.dy * -1);
          outTransition = SlideTransition(
            position: Tween<Offset>(begin: Offset.zero, end: endOffset).animate(
                CurvedAnimation(
                    parent: secondaryAnimation, curve: curve ?? defaultEase)),
            child: inTransition,
          );
        }
        // Return 'out' if we have one, fallback to just in
        return outTransition ?? inTransition;
      },
    );
  }
}
