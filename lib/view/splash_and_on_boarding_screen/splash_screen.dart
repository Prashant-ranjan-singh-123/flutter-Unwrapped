import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../test.dart';
import 'check_first_time.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), (){
      Get.off(const CheckFirstTime());
    });
    return Test(
      child: Scaffold(
        backgroundColor: HexColor('#071185').withOpacity(0),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  width: 130, height: 130, child: Image.asset('assets/images/logo_no_bg.png')).animate()
                  .scale(duration: 350.ms, curve: Curves.decelerate)
                  .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AutoSizeText('Flutter Unwrapped',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white),
              ).animate()
                  .scale(duration: 350.ms, curve: Curves.decelerate),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const AutoSizeText('------Mastering the Art------',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white),
              ).animate()
                  .scale(duration: 350.ms, curve: Curves.decelerate),
            ),
          ],
        )
      ),
    );
  }
}
