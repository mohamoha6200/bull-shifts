import 'package:bot_toast/bot_toast.dart';
import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToastUtil {
  ToastUtil();
  static showText({
    required String text,
    bool isSuccess = true,
  }) {
    BotToast.showText(
        text: text,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        borderRadius: BorderRadius.circular(100),
        textStyle: AppTextTheme.px15w600.copyWith(color: Colors.white),
        contentColor:
            isSuccess ? AppColor.lightGreenColor : AppColor.primaryRedColor,
        align: const Alignment(0.0, 0.91),
        duration: const Duration(seconds: 4));
  }
}
