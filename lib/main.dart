import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const BallPage());

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1D24CA),
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF201658),
          toolbarHeight: 60,
          toolbarOpacity: 0.5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
        body: Center(
          child: Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ),
      ),
    );
  }
}
