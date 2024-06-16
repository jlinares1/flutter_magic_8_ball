import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Ask Me Anything'),
      ),
      body: MagicBall(),
    )),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballImageNum = 1;

  void randomBallImage() {
    setState(() {
      ballImageNum = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  randomBallImage();
                },
                child: Image.asset('images/ball$ballImageNum.png')),
          ),
        ],
      ),
    );
  }
}
