import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:bull_shifts/presentation/features/tabbed_home/widgets/customNav/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _animationDuration = Duration(milliseconds: 350);

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    required this.tabs,
    this.selectedIndex = 0,
    required this.onTabChange,
  }) : super(key: key);

  final List<TabButton> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  late int selectedIndex;
  bool clickable = true;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(CustomNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    /// ensure updating through params for statefulWidget
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      selectedIndex = widget.selectedIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.tabs
                .map((t) => TabButton(
                      key: t.key,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      margin: const EdgeInsets.all(6),
                      active: selectedIndex == widget.tabs.indexOf(t),
                      iconActiveColor: Colors.white,
                      iconColor: Colors.black,
                      iconSize: 26.sp,
                      textColor: Colors.white,
                      rippleColor: AppColor.lightGreyColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      textStyle:
                          AppTextTheme.px16w600.copyWith(color: Colors.white),
                      text: t.text,
                      icon: t.icon,
                      curve: Curves.easeInCubic,
                      duration: _animationDuration,
                      onPressed: () {
                        if (!clickable) return;
                        setState(() {
                          selectedIndex = widget.tabs.indexOf(t);
                          clickable = false;
                        });

                        widget.onTabChange.call(selectedIndex);

                        Future.delayed(_animationDuration, () {
                          setState(() {
                            clickable = true;
                          });
                        });
                      },
                    ))
                .toList()));
  }
}
