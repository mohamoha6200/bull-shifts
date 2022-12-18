import 'dart:ui';

import 'package:bull_shifts/core/constants/assets_constants.dart';
import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShiftDetailsPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Shift shift;
  final expandedHeight = 230.h;

  final collapsedHeight = kToolbarHeight * 1.06;
  double _topPadding = 0.0;

  ShiftDetailsPersistentHeaderDelegate(this.shift);
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    _topPadding = MediaQuery.of(context).padding.top;
    double percent = shrinkOffset / (maxExtent - minExtent);
    percent = percent > 1 ? 1 : percent;
    return Material(
      elevation: percent == 1.0 ? .85 : 0.0,
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: lerpDouble(42, 21, percent),
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: lerpDouble(100.w, 0, percent),
                      height: lerpDouble(100.w, 0, percent),
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          AssetsConstants.companyLogo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: lerpDouble(25.h, 0, percent)),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      (percent > .8 ? 0.55 : 0.75),
                  child: AnimatedDefaultTextStyle(
                    style: AppTextTheme.px23w600.copyWith(
                      fontSize: (percent > .5 ? 20.sp : 23.sp),
                    ),
                    duration: const Duration(milliseconds: 100),
                    child: Text(
                      shift.company,
                      maxLines: percent > .65 ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -10,
            width: MediaQuery.of(context).size.width,
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: BackButtonRowWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight + _topPadding;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class BackButtonRowWidget extends StatelessWidget {
  const BackButtonRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Center(
            child: ClipOval(
              child: Container(
                color: Colors.black,
                width: 42.w,
                height: 42.w,
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    size: 26.w,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
