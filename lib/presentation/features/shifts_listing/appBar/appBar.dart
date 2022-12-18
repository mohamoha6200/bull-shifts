import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';

class ListingSliverAppbar extends StatelessWidget {
  const ListingSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Text(
              'Shifts offerts',
              style: AppTextTheme.px26w600,
            )
          ],
        ),
      ),
    );
  }
}
