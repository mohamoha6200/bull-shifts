import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/presentation/features/shift_details/widgets/info_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleDetailsSection extends StatelessWidget {
  const MiddleDetailsSection({super.key, required this.shift});
  final Shift shift;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        children: [
          const InfoTileWidget(
            iconData: Icons.location_on_outlined,
            text: '48 Rue Sous le Fort, Québec, QC G1K 4G9',
          ),
          if (shift.bonus > 0)
            InfoTileWidget(
              iconData: Icons.attach_money_outlined,
              text: 'Bonus au travailleur: +${shift.bonus}\$/H',
            ),
          const InfoTileWidget(
            iconData: Icons.pause,
            text: 'Pause de 30 minutes',
          ),
          const InfoTileWidget(
            iconData: Icons.local_parking_outlined,
            text: 'Stationnement gratuit',
          ),
          const InfoTileWidget(
            iconData: Icons.assignment_ind_outlined,
            text: 'pantalon noir, chemise noir',
          ),
        ],
      ),
    );
  }
}
