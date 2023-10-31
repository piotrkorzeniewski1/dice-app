import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, this.color, {super.key});

  final String text;
  final Color color;

  @override

  Widget build(context){

    return Text(
                text,
                style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold, 
                fontSize: 25.0,
                ),
    );

  }

}