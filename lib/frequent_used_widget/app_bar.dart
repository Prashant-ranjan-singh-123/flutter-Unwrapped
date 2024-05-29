import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class beautifulLottieCard extends StatelessWidget{
  // final double widthIs;
  final double heightIs;
  final String cardColor;
  final String cardShadingColor;
  final String ImageAsset;
  final String LearnWhat;
  final Function fun;


  beautifulLottieCard({
    super.key,
    // required this.widthIs,
    required this.heightIs,
    required this.cardColor,
    required this.cardShadingColor,
    required this.LearnWhat,
    required this.ImageAsset,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40,),
          AspectRatio(
            aspectRatio: 1.7/1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: HexColor(cardShadingColor),
                    blurStyle: BlurStyle.solid,
                    blurRadius: 205,
                    spreadRadius: 0
                  )
                ],
                borderRadius: BorderRadius.circular(15.0),
                color: HexColor('#01122a'),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    fun();
                  },
                  // splashColor: Colors.grey.withOpacity(0.5),
                  highlightColor: HexColor('#054380').withOpacity(0.5),
                  hoverColor: HexColor('#054380'),
                  focusColor: HexColor('#054380'),
                  splashColor: HexColor('#054380'),
                  hoverDuration: const Duration(milliseconds: 450),
                  borderRadius: BorderRadius.circular(15.0),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.3,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Image.asset(ImageAsset, fit: BoxFit.cover,),
                        ),
                      ),
                      Center(
                        child: AutoSizeText(LearnWhat,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}