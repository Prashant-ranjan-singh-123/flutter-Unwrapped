import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Test extends StatelessWidget {
  Widget child;
  Test({
    required this.child
});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Random random = Random();

    return Scaffold(
      backgroundColor: HexColor('#011f4b').withOpacity(0.3),
      body: Stack(
        children: <Widget>[
          // Background
          child,
          // Randomly positioned blurred avatar
          Align(
            alignment: Alignment(-1,-1),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 50,
              ),
            ),
          ),


          Align(
            alignment: const Alignment(1, 1),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: 80,
              ),
            ),
          ),

          Align(
            alignment: const Alignment(-0.5, 0),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 80,
              ),
            ),
          ),


          Align(
            alignment: const Alignment(1, -1),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
              ),
            ),
          ),
          // Positioned(
          //   left: random.nextDouble() * screenWidth,
          //   top: random.nextDouble() * screenHeight,
          //   child: ImageFiltered(
          //     imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          //     child: CircleAvatar(
          //       backgroundColor: Colors.white.withOpacity(0.5),
          //       radius: 250,
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }
}
