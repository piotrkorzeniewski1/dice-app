import 'package:diceapp/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.colorStart, this.colorEnd, {super.key});
  final Color colorStart;
  final Color colorEnd;
  @override

  Widget build(context){

    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [colorStart, colorEnd],
              begin: startAlignment,
              end: endAlignment,
               ),
              ),
          child:  Center(
            child: Column(
             children: [
              Image.asset('assets/images/dice-1.png',width: 200),
              TextButton(onPressed: () {}, child: const StyledText('Roll me!', Color.fromARGB(255, 1, 247, 255) ))
             ], 
            ),
            ),
        );
  }

}