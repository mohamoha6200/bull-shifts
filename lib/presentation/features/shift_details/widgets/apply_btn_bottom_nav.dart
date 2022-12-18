import 'package:flutter/material.dart';

class ApplyBtnBottomNavWidget extends StatelessWidget {
  const ApplyBtnBottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: TextButton(onPressed: () {}, child: const Text('Postuler')),
      ),
    );
  }
}
