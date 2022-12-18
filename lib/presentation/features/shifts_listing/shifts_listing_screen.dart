import 'package:bull_shifts/presentation/common/cubit/shifts_cubit.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/appBar/appBar.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/list_header.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/shifts_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShiftsListingScreen extends StatelessWidget {
  const ShiftsListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ShiftsCubit, ShiftsState>(
          builder: (context, state) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const ListingSliverAppbar(),
                SliverToBoxAdapter(child: SizedBox(height: 12.h)),
                if (state.lastMinuteShifts.isNotEmpty) ...[
                  const ListHeaderWidget(title: 'DERNIERE MINUTE'),
                  ShiftsSliverList(shifts: state.lastMinuteShifts),
                  SliverToBoxAdapter(child: SizedBox(height: 6.h)),
                ],
                if (state.upcomingShifts.isNotEmpty) ...[
                  const ListHeaderWidget(title: 'SHIFTS A VENIR'),
                  ShiftsSliverList(shifts: state.upcomingShifts),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
