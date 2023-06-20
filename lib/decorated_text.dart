import 'package:flutter/material.dart';

class DecoratedText extends StatelessWidget {
  final String label;

  const DecoratedText(this.label, {super.key,});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
