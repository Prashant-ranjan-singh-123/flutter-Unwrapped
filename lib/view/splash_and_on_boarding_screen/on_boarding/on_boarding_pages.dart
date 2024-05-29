import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import '../../../frequent_used_widget/moving_background.dart';

class OnboardingPage extends StatelessWidget {
  String title;
  String body;
  String lottie;
  double zoom;
  OnboardingPage(
      {Key? key,
      required this.title,
      required this.body,
      required this.lottie,
      required this.zoom});

  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top,
                  ),
                  SizedBox(
                    width: Get.width * 0.95,
                    height: Get.height * 0.63,
                    child: ClipRect( // ClipRect to clip the animation within the container
                      child: Transform.scale(
                        scale: zoom, // Set your desired zoom level
                        child: Lottie.asset(lottie, reverse: true,),
                      ),
                    ),
                  ).animate(delay: 1000.ms).flip(duration: 800.ms, curve: Curves.decelerate),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Expanded(
                      child: Opacity(
                    opacity: 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor('#01122a'),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 60),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              AutoSizeText(title,
                                      maxLines: 1,
                                      style: const TextStyle(
                                          fontFamily: 'Oswald',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 32,
                                          color: Colors.white
                                      ))
                                  .animate(delay: 1000.ms)
                                  .scale(
                                      duration: 800.ms, curve: Curves.decelerate),
                              const SizedBox(height: 15),
                              Text(
                                body,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white
                                ),
                                textAlign: TextAlign.start,
                              ).animate(delay: 1000.ms).flip(
                                  duration: 1100.ms, curve: Curves.decelerate),
                            ],
                          ),
                        ),
                      ),
                    ).animate().slideY(
                        begin: 1,
                        curve: Curves.decelerate,
                        duration: const Duration(milliseconds: 800)),
                  ))
                  // Image.asset('assets/brain_sides_onboarding.png', height: Get.height*0.35, width: Get.height*0.35,),
                ],
              ),
            ],
          )),
    );
  }
}
