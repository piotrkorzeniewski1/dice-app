import 'package:flutter/material.dart';
import 'package:diceapp/dice_roller.dart';

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
          child:  const Center(
            child: DiceRoller(),
            ),
        );
  }

}