import 'package:flutter/material.dart';
import 'package:second_app/styles_text.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});
  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
              gradient: (LinearGradient(
            colors: [
              const Color.fromARGB(255, 53, 5, 136),
              Color.fromARGB(255, 78, 7, 200),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ))),
          child: Center(
            child: StylesText()
          ),
        );
  }
  
}