import 'package:flutter/material.dart';
import 'package:second_app/gradiant_container.dart';

void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: GradiantContainer(
          const  Color.fromARGB(255, 2, 89, 6),
          const  Color.fromARGB(255, 80, 2, 110)
            ),
      ),
    ),
  );
}
