import 'package:bull_shifts/presentation/common/themes/text_theme.dart';
import 'package:flutter/material.dart';

class UnderConstructionText extends StatelessWidget {
  const UnderConstructionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'En cours de construction',
        style: AppTextTheme.px18w600,
        textAlign: TextAlign.center,
      ),
    );
  }
}
