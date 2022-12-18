import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoTileWidget extends StatelessWidget {
  const InfoTileWidget({super.key, required this.iconData, required this.text});
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 40.w, top: 7.h, bottom: 7.h),
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 1, color: Colors.black)),
            child: Center(
              child: Icon(
                iconData,
                size: 16.sp,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Flexible(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextTheme.px20w500,
            ),
          )
        ],
      ),
    );
  }
}
