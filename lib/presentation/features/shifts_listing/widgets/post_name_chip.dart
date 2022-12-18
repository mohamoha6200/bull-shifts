import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';

class PostNameChipWidget extends StatelessWidget {
  const PostNameChipWidget({
    Key? key,
    required this.shift,
  }) : super(key: key);

  final Shift shift;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        shift.postName,
        overflow: TextOverflow.ellipsis,
        style: AppTextTheme.px12w600.copyWith(color: AppColor.primaryGreyColor),
      ),
      backgroundColor: AppColor.lightGreyColor,
    );
  }
}
