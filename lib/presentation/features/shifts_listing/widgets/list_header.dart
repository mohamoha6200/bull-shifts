import 'package:bull_shifts/presentation/common/themes/app_color.dart';
import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';

class ListHeaderWidget extends StatelessWidget {
  const ListHeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverToBoxAdapter(
        child: Text(title,
            style: AppTextTheme.px15w600
                .copyWith(color: AppColor.primaryGreyColor.withOpacity(0.8))),
      ),
    );
  }
}
