import 'package:bull_shifts/core/constants/assets_constants.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _scaleDuration = Duration(milliseconds: 450);

class AnimatedLoader extends StatelessWidget {
  const AnimatedLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        duration: _scaleDuration,
        tween: Tween<double>(begin: 0.1, end: 1.0),
        curve: Curves.bounceOut,
        builder: (context, value, child) {
          return AnimatedScale(
            scale: value,
            duration: _scaleDuration,
            child: child,
          );
        },
        child: SizedBox(
          width: 150.w,
          child: const FlareActor(
            AssetsConstants.splashLoader,
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Alarm",
          ),
        ),
      ),
    );
  }
}
