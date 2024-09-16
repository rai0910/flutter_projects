import 'package:flutter/material.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;



class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1,this.color2,{super.key});

  const GradiantContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.indigo;

final Color color1;
final Color color2;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
              gradient: (LinearGradient(
            colors: [color1,color2],
            begin: startAllignment,
            end: endAllignment,
          ))),
          child: Center(
            child: Image.asset('assets/images/dice-2.png'),
          ),
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