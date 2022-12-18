import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme get poppinsTextTheme => GoogleFonts.ovoTextTheme()
      .apply(bodyColor: Colors.black, displayColor: Colors.black);

  static TextStyle defaultTextStyle =
      poppinsTextTheme.titleLarge!.copyWith(color: Colors.black);

  static TextStyle px10w400 =
      defaultTextStyle.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400);

  static TextStyle px12w600 =
      defaultTextStyle.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600);
  static TextStyle px15w600 =
      defaultTextStyle.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w600);
  static TextStyle px16w600 =
      defaultTextStyle.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600);
  static TextStyle px18w600 =
      defaultTextStyle.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600);
  static TextStyle px20w500 =
      defaultTextStyle.copyWith(fontSize: 20.sp, fontWeight: FontWeight.w500);
  static TextStyle px23w600 =
      defaultTextStyle.copyWith(fontSize: 23.sp, fontWeight: FontWeight.w600);
  static TextStyle px26w600 =
      defaultTextStyle.copyWith(fontSize: 26.sp, fontWeight: FontWeight.w600);
}
