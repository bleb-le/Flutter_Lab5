import 'package:flutter/material.dart';
import 'package:my_app_belyaeva/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 218, 139, 165),
          Color.fromARGB(255, 202, 165, 110),
          Color.fromARGB(255, 235, 225, 143),
        ),
      ),
    ),
  );
}
