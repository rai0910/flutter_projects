import 'package:flutter/material.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;

class GradiantContainer extends StatefulWidget {
    GradiantContainer(this.color1, this.color2, {super.key});

   GradiantContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('changing image ..');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: (LinearGradient(
        colors: [color1, color2],
        begin: startAllignment,
        end: endAllignment,
      ))),
      child: Center(
          child: ),
    );
  }
}

// class GradiantContainer extends StatelessWidget {
//   const GradiantContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//           decoration: BoxDecoration(
//               gradient: (LinearGradient(
//             colors: colors,
//             begin: startAllignment,
//             end: endAllignment,
//           ))),
//           child: Center(
//             child: StylesText('Hello World'),
//           ),
//         );
//   }
  
// }