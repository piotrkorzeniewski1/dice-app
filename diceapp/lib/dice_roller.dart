import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});

 @override

 State<DiceRoller> createState(){
  return _DiceRollerState();
 }

}

class _DiceRollerState extends State<DiceRoller>{

  int randomNumber = 1;
  void rollDice(){
    setState((){
        randomNumber = randomizer.nextInt(6)+1;
    });
  }

  @override

  Widget build(context){
    return Column(
             mainAxisSize: MainAxisSize.min,
             children: [
              Image.asset(
                'assets/images/dice-$randomNumber.png', 
                width: 200,
                ),
              const SizedBox(height: 20,),

              TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(
                  fontSize: 30,
                ),
              ),
              child: const Text('Roll Dice!'),
              ),
             ], 
            );
  }
}