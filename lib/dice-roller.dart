import 'package:flutter/material.dart';

import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final Random _random = Random();
  late int _diceNumber;

  int _getRandomNumber () {
    return _random.nextInt(6) + 1;
  }

  void _rollDice() {
    setState(() {
      _diceNumber = _getRandomNumber();
    });
  }

  @override
  void initState() {
    super.initState();
    _diceNumber = _getRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Role Dice'),
        )
      ],
    );
  }
}
