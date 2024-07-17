import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:dice_app/styled_text.dart';

const gradientStart = Alignment.topLeft;
const gradientEnd = Alignment.bottomRight;



class GradientContainer extends StatelessWidget {
  const GradientContainer(this.from, this.to, {super.key});

  final Color from;
  final Color to;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [from, to],
          begin: gradientStart,
          end: gradientEnd,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
