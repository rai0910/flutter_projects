import 'package:flutter/material.dart';
import 'package:second_app/gradiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: GradiantContainer(
            Color.fromARGB(255, 2, 89, 6),
            Color.fromARGB(255, 8, 232, 20)
            ),
      ),
    ),
  );
}
