import 'package:flutter/material.dart';

class StylesText extends StatelessWidget {
  const StylesText (String text,{super.key});
  @override 
  Widget build(context) {
    return const Text(
              'Hello World',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            );
  }
}