import 'package:bull_shifts/presentation/features/shift_details/sections/middle_details_section.dart';
import 'package:bull_shifts/presentation/features/shift_details/sections/upper_details_section.dart';
import 'package:bull_shifts/presentation/features/shift_details/widgets/apply_btn_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:bull_shifts/presentation/common/cubit/shifts_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'persistent_header/persistent_header_delegate.dart';

class ShiftDetailsScreen extends StatelessWidget {
  const ShiftDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const ApplyBtnBottomNavWidget(),
      body: SafeArea(
        child: BlocBuilder<ShiftsCubit, ShiftsState>(builder: (context, state) {
          return CustomScrollView(slivers: [
            SliverPersistentHeader(
                delegate:
                    ShiftDetailsPersistentHeaderDelegate(state.shiftOnFocus!),
                pinned: true),
            SliverToBoxAdapter(
              child: UpperDetailsSection(shift: state.shiftOnFocus!),
            ),
            SliverToBoxAdapter(
              child: MiddleDetailsSection(shift: state.shiftOnFocus!),
            ),

            /// Added to showcase the persistent header
            SliverToBoxAdapter(
              child: SizedBox(height: 450.h),
            )
          ]);
        }),
      ),
    );
  }
}
