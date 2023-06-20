import 'package:flutter/material.dart';

import 'dice-roller.dart';

class GradientContainer extends StatelessWidget {
  final String label;

  final List<Color> gradientColors;

  const GradientContainer(this.label,
      {super.key, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
