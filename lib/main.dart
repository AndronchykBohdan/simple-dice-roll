import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        'GradientContainer from separate file',
        gradientColors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 255, 7, 88),
        ],
      ),
    ),
  ));
}

