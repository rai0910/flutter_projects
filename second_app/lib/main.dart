import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: GradiantContainer(),
      ),
    ),
  );
}

class GradiantContainer extends StatelessWidget {
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
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
        );
  }
  
}