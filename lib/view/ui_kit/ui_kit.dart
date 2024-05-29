import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../frequent_used_widget/app_bar.dart';
import '../../frequent_used_widget/moving_background.dart';

class UiKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: const FittedBox(
            fit: BoxFit.contain,
            child: AutoSizeText(
              'UI Kit',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white24),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.15),
                        blurRadius: 30,
                        offset: const Offset(0, 10),
                      ),
                    ]
                  ),
                  child: const Column(
                  children: [
                    AutoSizeText(
                      maxLines: 1,
                      'Under Construction',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 5,),
                    AutoSizeText(
                      'This Feature is under construction and we will finish it soon.',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget returnContainer(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        boxShadow: [
          BoxShadow(
            color: HexColor('#6497b1'),
            blurStyle: BlurStyle.outer,
            spreadRadius: 1,
            blurRadius: 7,
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        color: HexColor('#011f4b'),
      ),
    ),
  );
}
