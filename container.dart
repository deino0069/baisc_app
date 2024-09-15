import "package:flutter/material.dart";
import "package:first_app/dice_roller.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyGredient extends StatelessWidget {
  const MyGredient(this.color, {super.key});

  final List<Color> color;

  @override
  Widget build(context) {
    final Widget gradientContainer = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
    return gradientContainer;
  }
}
