import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeData {
  const AppThemeData._();
  static ThemeData lightThemeData = ThemeData(
    textTheme: AppTextTheme.poppinsTextTheme,
    backgroundColor: AppColor.backgroundLightGreyColor,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: AppColor.backgroundLightGreyColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColor.backgroundLightGreyColor,
    ),
    primaryTextTheme: AppTextTheme.poppinsTextTheme,
    appBarTheme:
        const AppBarTheme(backgroundColor: AppColor.backgroundLightGreyColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        elevation: 0,
        minimumSize: Size(double.infinity, 55.h),
        backgroundColor: AppColor.primaryGreenColor,
        foregroundColor: Colors.white,
        textStyle: AppTextTheme.px18w600.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
  );
}
