import 'package:flutter/material.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
    GradiantContainer(this.color1, this.color2, {super.key});

   GradiantContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-4.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
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
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('Roll Dice'),
          )
        ],
      )),
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