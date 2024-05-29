import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WidgetNameContainer{
  List<String> imagePath = [
    "assets/images/imag6.jpg",
    "assets/images/imag5.jpg",
    "assets/images/imag4.jpg",
    "assets/images/imag3.jpg",
    "assets/images/imag2.jpeg",
  ];

  String randomImage(){
    final random = Random();
    return imagePath[random.nextInt(imagePath.length)];
  }

  Widget WidgetContainer({
    required final String name,
    required final Function fun
  }){
    return GestureDetector(
      onTap: () {
        // Add your button click functionality here
      },
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            image: DecorationImage(
              image: AssetImage(randomImage()),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: InkWell(
            // highlightColor: HexColor('#03396c'),
            highlightColor: Colors.transparent,
            hoverColor: HexColor('#054380'),
            focusColor: HexColor('#054380'),
            splashColor: HexColor('#054380'),
            hoverDuration: const Duration(milliseconds: 450),
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            onTap: () {
              fun();
            },
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            name,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          const Icon(Icons.arrow_forward, color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    )
    ;
  }
}