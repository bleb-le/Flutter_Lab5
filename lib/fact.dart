import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app_belyaeva/style.dart';

final randomizer = Random();

List<String> facts = [
  'Кошка мурчит, когда ей хорошо. Это маленький мотор счастья!!!!',
  'Морские выдры спят, держась за лапки, чтобы не потеряться!!',
  'Пингвин дарит любимой самый красивый камешек!! :)',
];

class FactGenerator extends StatefulWidget {
  const FactGenerator({super.key});

  @override
  State<FactGenerator> createState() {
    return _FactGeneratorState();
  }
}

class _FactGeneratorState
    extends State<FactGenerator> {
  var currentFact = 1;

  void nextFact() {
    setState(() {
      currentFact = randomizer.nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/animal-$currentFact.jpg',
          width: 300,
        ),
        const SizedBox(height: 20),
        StyledText(facts[currentFact - 1]),
        const SizedBox(height: 20),
        TextButton(
          onPressed: nextFact,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const Text('Новый факт'),
        ),
      ],
    );
  }
}
