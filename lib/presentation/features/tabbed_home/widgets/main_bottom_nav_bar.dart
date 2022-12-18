import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/features/tabbed_home/widgets/customNav/custom_nav_bar.dart';
import 'package:bull_shifts/presentation/features/tabbed_home/widgets/customNav/tab_button.dart';
import 'package:flutter/material.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar(
      {super.key, required this.currentIndex, required this.onTabChanged});
  final int currentIndex;
  final ValueChanged<int> onTabChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            // upper shadow
            const BoxShadow(
                offset: Offset(0.0, 10.0),
                color: AppColor.lightGreyColor,
                blurRadius: 30.0,
                spreadRadius: 30.0),
            // lower shadow
            BoxShadow(
                offset: const Offset(0.0, 7.0),
                color: AppColor.accentGreyColor.withOpacity(0.4),
                blurRadius: 5.0,
                spreadRadius: 5.0),
          ],
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CustomNavBar(
              selectedIndex: currentIndex,
              onTabChange: (value) {
                onTabChanged(value);
              },
              tabs: const [
                TabButton(
                  icon: Icons.search,
                  text: 'Shifts Offerts',
                ),
                TabButton(
                  icon: Icons.event_note_outlined,
                  text: 'Historique',
                ),
                TabButton(
                  icon: Icons.person_outline,
                  text: 'Mon Profil',
                )
              ]),
        ),
      ),
    );
  }
}
