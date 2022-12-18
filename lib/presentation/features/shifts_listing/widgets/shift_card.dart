import 'package:bull_shifts/core/extensions/dateTime_extensions.dart';
import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/common/cubit/shifts_cubit.dart';
import 'package:bull_shifts/presentation/common/routes/route_constants.dart';
import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/animator/widget_animator.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/post_name_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShiftCardWidget extends StatelessWidget {
  const ShiftCardWidget({super.key, required this.shift});
  final Shift shift;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: GestureDetector(
        onTap: () {
          context.read<ShiftsCubit>().shiftCardPressed(shift);
          Navigator.pushNamed(context, RouteList.shiftDetailsScreen);
        },
        child: WidgetAnimator(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0.0, 10.0),
                      color: AppColor.lightGreyColor,
                      blurRadius: 3.0,
                      spreadRadius: 3.0),
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h),
                    Text(
                      shift.company,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextTheme.px18w600,
                    ),
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
                                    style: AppTextTheme.px12w600.copyWith(
                                        color: AppColor.primaryGreyColor),
                                  ),
                                  if (shift.bonus > 0)
                                    Text(
                                      ' + ${shift.bonus}\$ / H',
                                      style: AppTextTheme.px12w600.copyWith(
                                          color: AppColor.lightGreenColor),
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
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class FormattedTimeWidget extends StatelessWidget {
  const FormattedTimeWidget({
    Key? key,
    required this.shift,
  }) : super(key: key);
  final Shift shift;
  @override
  Widget build(BuildContext context) {
    return Text(
      '${shift.startAt.toDefaultTimeFormatted()} - ${shift.endAt.toDefaultTimeFormatted()}',
      style: AppTextTheme.px12w600.copyWith(color: AppColor.primaryRedColor),
    );
  }
}

class FormattedDateTextWidget extends StatelessWidget {
  const FormattedDateTextWidget({
    Key? key,
    required this.shift,
  }) : super(key: key);

  final Shift shift;

  @override
  Widget build(BuildContext context) {
    final isToday = shift.startAt.isToday();
    return Padding(
      padding: EdgeInsets.only(top: 14.h, bottom: 4.h),
      child: Text(
        isToday
            ? "AUJOURD'HUI"
            : shift.startAt.toDefaultDateFormatted().toUpperCase(),
        style: AppTextTheme.px15w600.copyWith(
            color:
                isToday ? AppColor.primaryRedColor : AppColor.primaryGreyColor),
      ),
    );
  }
}
