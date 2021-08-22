import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: eightBall(),
      ),
    );

class eightBall extends StatefulWidget {
  const eightBall({Key? key}) : super(key: key);

  @override
  _eightBallState createState() => _eightBallState();
}

class _eightBallState extends State<eightBall> {
  int answer = 1;

  void rollAnswer() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue[800],
        // centerTitle: false,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: TextButton(
          child: Image.asset('images/ball$answer.png'),
          onPressed: rollAnswer,
        ),
      ),
    );
  }
}
