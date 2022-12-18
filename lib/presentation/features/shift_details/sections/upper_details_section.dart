import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/post_name_chip.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/shift_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpperDetailsSection extends StatelessWidget {
  const UpperDetailsSection({super.key, required this.shift});
  final Shift shift;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormattedDateTextWidget(shift: shift),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: PostNameChipWidget(shift: shift),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Row(
                      children: [
                        Text(
                          '${shift.buyPrice}\$ / H',
                          style: AppTextTheme.px12w600
                              .copyWith(color: AppColor.primaryGreyColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              FormattedTimeWidget(shift: shift),
            ],
          ),
        ],
      ),
    );
  }
}
