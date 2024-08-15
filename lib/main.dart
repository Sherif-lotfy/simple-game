import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1e777e),
        appBar: AppBar(
          title: const Text(
            'project-2',
            style: TextStyle(
              fontFamily: 'Edu',
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFF145358),
        ),
        body: ImgPage(),
      ),
    ),
  );
}

class ImgPage extends StatefulWidget {
  // const ImgPage({super.key});

  @override
  State<ImgPage> createState() => _ImgPageState();
}

class _ImgPageState extends State<ImgPage> {
  int numLeft = 1;
  int numright = 8;
  String success = 'success !';
  String fail = 'Try again...';
  String text = 'Try again...';
  final Random _random = Random();
  void pressing() {
    numLeft = _random.nextInt(9) + 1;
    numright = _random.nextInt(9) + 1;
    if (numLeft == numright) {
      text = success;
    } else {
      text = fail;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '$text',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'PoetsenOne',
              fontSize: 40,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      pressing();
                    });
                  },
                  child: Image.asset(
                    'imgs/image-$numLeft.png',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      pressing();
                    });
                  },
                  child: Image.asset(
                    'imgs/image-$numright.png',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
