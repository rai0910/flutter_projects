import 'package:flutter/material.dart';
import 'package:second_app/styles_text.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});
  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
              gradient: (LinearGradient(
            colors: [
              const Color.fromARGB(255, 53, 5, 136),
              Color.fromARGB(255, 78, 7, 200),
            ],
            begin: startAllignment,
            end: endAllignment,
          ))),
          child: Center(
            child: StylesText()
          ),
        );
  }
  
}