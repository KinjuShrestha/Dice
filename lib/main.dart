import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Roll',
      home: Dice(),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int image = 1;
  random() {
    setState(() {
      image = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 163, 181, 255),
        title: Text('Welcome to Dice House'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              "assets/$image.png",
              width: 250,
              height: 300,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: random,
            child: Text('ROLL'),
            color: Color.fromARGB(255, 95, 69, 244),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
