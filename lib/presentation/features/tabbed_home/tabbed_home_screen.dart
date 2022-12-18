import 'package:bull_shifts/presentation/features/account/user_account_screen.dart';
import 'package:bull_shifts/presentation/features/history/shifts_history_screen.dart';
import 'package:bull_shifts/presentation/features/shifts_listing/shifts_listing_screen.dart';
import 'package:bull_shifts/presentation/features/tabbed_home/widgets/main_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class TabbedHomeScreen extends StatefulWidget {
  const TabbedHomeScreen({super.key});

  @override
  State<TabbedHomeScreen> createState() => _TabbedHomeScreenState();
}

class _TabbedHomeScreenState extends State<TabbedHomeScreen> {
  final List<Widget> screens = [
    const ShiftsListingScreen(),
    const ShiftsHistoryScreen(),
    const AccountScreen(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [...screens],
      ),
      bottomNavigationBar: MainNavigationBar(
        currentIndex: _currentIndex,
        onTabChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
