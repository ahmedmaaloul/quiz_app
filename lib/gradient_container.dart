import 'package:adv_basics/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignemnt = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignemnt,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png',
            width: 300,),
            const SizedBox(height: 75,),
            const StyledText('Learn Flutter the fun way!',25),
            const SizedBox(height: 40,),
            OutlinedButton(onPressed: () {}, child: const StyledText('Start Quizz',15))
          ],
        ),
      ),
    );
  }
}
