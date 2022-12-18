import 'package:flutter/material.dart';

import 'button.dart';

class TabButton extends StatefulWidget {
  final bool? active;
  final Color? iconColor;
  final Color? rippleColor;
  final Color? iconActiveColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final TextStyle? textStyle;
  final double? iconSize;
  final Function? onPressed;
  final String text;
  final IconData icon;
  final Duration? duration;
  final Curve? curve;
  final BorderRadius? borderRadius;

  const TabButton({
    Key? key,
    this.active,
    required this.icon,
    this.iconColor,
    this.rippleColor,
    this.iconActiveColor,
    required this.text,
    this.textColor,
    this.padding,
    this.margin,
    this.duration,
    this.curve,
    this.textStyle,
    this.iconSize,
    this.onPressed,
    this.borderRadius,
  }) : super(key: key);

  @override
  _TabButtonState createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    return Button(
      borderRadius: widget.borderRadius,
      duration: widget.duration,
      iconSize: widget.iconSize,
      active: widget.active,
      onPressed: () {
        widget.onPressed?.call();
      },
      padding: widget.padding,
      margin: widget.margin,
      rippleColor: widget.rippleColor,
      curve: widget.curve,
      iconActiveColor: widget.iconActiveColor,
      iconColor: widget.iconColor,
      icon: widget.icon,
      text: Text(widget.text, style: widget.textStyle),
    );
  }
}
