import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randNumber = 1;
  int? rolledNumber;  
  void func1() {
    randNumber = randomizer.nextInt(6) + 1;
    setState(() {
      rolledNumber = randNumber;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$randNumber.png", width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: func1,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 13, 13, 13),
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text("Roll Dice"),
        ),
        const SizedBox(height: 20),
        const SizedBox(height: 20),
        if (rolledNumber == 2)
          const Center(
            child: Text(
              "Congratulations !! You won.",
              style: TextStyle(
                  color: Color.fromARGB(255, 94, 1, 255), fontSize: 24),
            ),
          ),
      ],
    );
  }
}
