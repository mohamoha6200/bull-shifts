import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/widgets/shift_card.dart';
import 'package:flutter/material.dart';

class ShiftsSliverList extends StatelessWidget {
  const ShiftsSliverList({super.key, required this.shifts});
  final List<Shift> shifts;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return ShiftCardWidget(
              shift: shifts[index],
            );
          },
          childCount: shifts.length,
        ),
      ),
    );
  }
}
