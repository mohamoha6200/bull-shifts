import 'dart:math' show pow;

import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
    this.icon,
    this.iconSize,
    this.iconActiveColor,
    this.iconColor,
    this.text,
    this.rippleColor,
    required this.onPressed,
    this.duration,
    this.curve,
    this.padding,
    this.margin,
    required this.active,
    this.borderRadius,
  }) : super(key: key);

  final IconData? icon;
  final double? iconSize;
  final Text? text;
  final Color? iconActiveColor;
  final Color? iconColor;
  final Color? rippleColor;
  final bool? active;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Duration? duration;
  final Curve? curve;
  final BorderRadius? borderRadius;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  late bool _expanded;
  late final AnimationController expandController;

  @override
  void initState() {
    super.initState();
    _expanded = widget.active!;

    expandController =
        AnimationController(vsync: this, duration: widget.duration)
          ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    expandController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var curveValue = expandController
        .drive(CurveTween(
            curve: _expanded ? widget.curve! : widget.curve!.flipped))
        .value;
    var colorTween =
        ColorTween(begin: widget.iconColor, end: widget.iconActiveColor);
    var colorTweenAnimation = colorTween.animate(CurvedAnimation(
        parent: expandController,
        curve: _expanded ? Curves.easeInExpo : Curves.easeOutCirc));

    _expanded = !widget.active!;
    if (_expanded) {
      expandController.reverse();
    } else {
      expandController.forward();
    }

    Widget icon = Icon(widget.icon,
        color: colorTweenAnimation.value, size: widget.iconSize);

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        splashColor: widget.rippleColor,
        borderRadius: widget.borderRadius,
        onTap: widget.onPressed,
        child: Container(
          padding: widget.margin,
          child: AnimatedContainer(
            curve: Curves.easeOut,
            padding: widget.padding,
            duration: widget.duration!,
            decoration: BoxDecoration(
              color: _expanded
                  ? AppColor.unselectedTabGreyColor
                  : AppColor.primaryGreenColor,
              borderRadius: widget.borderRadius,
            ),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Builder(
                builder: (_) {
                  return Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      if (widget.text!.data != '')
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0,
                                child: icon,
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  widthFactor: curveValue,
                                  child: Opacity(
                                      opacity: _expanded
                                          ? pow(expandController.value, 13)
                                              as double
                                          : expandController
                                              .drive(CurveTween(
                                                  curve: Curves.easeIn))
                                              .value,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.sp,
                                            right: 35.sp *
                                                expandController
                                                    .drive(CurveTween(
                                                        curve:
                                                            Curves.easeOutSine))
                                                    .value),
                                        child: widget.text,
                                      ))),
                            ]),
                      Align(alignment: Alignment.centerLeft, child: icon),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
