import 'package:flutter/material.dart';
import 'package:diceapp/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold( 
        body:  GradientContainer(Color.fromARGB(255, 97, 6, 232),Color.fromARGB(255, 96, 0, 0)),
        ),
    ),
  );
}