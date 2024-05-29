import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../frequent_used_widget/app_bar.dart';
import '../../../../frequent_used_widget/moving_background.dart';
import '../../../nav_bar_screens/home_screen/section_4_interview/flutter_interview_bottom_nav.dart';

class FlutterInterviewAskScreen extends StatefulWidget {
  const FlutterInterviewAskScreen({Key? key}) : super(key: key);

  @override
  State<FlutterInterviewAskScreen> createState() => _FlutterInterviewAskScreenState();
}

class _FlutterInterviewAskScreenState extends State<FlutterInterviewAskScreen> {
  List<bool> lightOfContainer = [false, false, false, false, false, false];
  List<String> lightOfContainerColor = ['#011f4b','#011f4b','#011f4b','#011f4b','#011f4b','#011f4b',];

  void setColor(){
    for(int i=0;i<lightOfContainer.length;++i){
      if(lightOfContainer[i]){
        lightOfContainerColor[i]='#6497b1';
      }else{
        lightOfContainerColor[i]='#011f4b';
      }
    }
    setState(() {});
  }

  Future<void> lightOnOff() async {
    await Future.delayed(const Duration(milliseconds: 0), () async {
      lightOfContainer = [true, true, true, true, true, true];
      setState(() {});
      int times=4;
      for(int i = 0; i<times;++i){
        await Future.delayed(const Duration(milliseconds: 180),() async {
          lightOfContainer = [false, false, false, false, false, false];
          setState(() {});
          await Future.delayed(const Duration(milliseconds: 180),(){
            lightOfContainer = [true, true, true, true, true, true];
            setState(() {});
          });
        });
      }
    });
    lightOfContainer = [false, false, false, false, false, false];
  }

  void _Beginner(){
    Get.to(FlytterInterviewBottomNav(pageNumber: 0),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }
  void _Intermediate(){
    Get.to(FlytterInterviewBottomNav(pageNumber: 1),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }
  void _Advanced(){
    Get.to(FlytterInterviewBottomNav(pageNumber: 2),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }
  void _Challenge(){
    Get.to(FlytterInterviewBottomNav(pageNumber: 3),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }
  void _Additional(){
    Get.to(FlytterInterviewBottomNav(pageNumber: 4),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }

  @override
  void initState() {
    lightOnOff();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setColor();
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: const AutoSizeText(
            'Flutter Interview Question',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  child: Column(
                    children: [
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Hello Job Seekers,',
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const AutoSizeText(
                            'Lets Brush-up your knowledge,',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate),
                        ],
                      ),
                      const SizedBox(height: 70,),
                      Row(
                        children: [
                          const Expanded(flex:1, child: SizedBox()),
                          Expanded(
                            flex: 3,
                            child: AutoSizeText(
                              'By working through these questions, users will enhance their knowledge of core Flutter concepts like widgets, which are the building blocks of Flutter apps',
                              textAlign: TextAlign.right,
                              maxLines: 4,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Hardness Level,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 20,),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[0],
                                    // cardShadingColor: '#011f4b',
                                    LearnWhat: '',
                                    ImageAsset: 'assets/images/level_1.png',
                                    fun: (){
                                      _Beginner();
                                    },
                                  ),
                                  onTapDown: (_) {
                                    setState(() {
                                      lightOfContainer[0] = true;
                                    });
                                  },
                                  onTapUp: (_) {
                                    setState(() {
                                      lightOfContainer[0] = false;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      lightOfContainer[0] = false;
                                    });
                                  },
                                ),
                                AutoSizeText(
                                  'Beginner',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate)
                              .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                          const Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[1],
                                    // cardShadingColor: '#011f4b',
                                    LearnWhat: '',
                                    ImageAsset: 'assets/images/level_2.png',
                                    fun: (){
                                      _Intermediate();
                                    },
                                  ),
                                  onTapDown: (_) {
                                    setState(() {
                                      lightOfContainer[1] = true;
                                    });
                                  },
                                  onTapUp: (_) {
                                    setState(() {
                                      lightOfContainer[1] = false;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      lightOfContainer[1] = false;
                                    });
                                  },
                                ),
                                const AutoSizeText(
                                  'Intermediate',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate)
                              .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                          // Expanded(flex: 1, child: SizedBox()),
                        ],
                      ),
                      Row(
                        children: [
                          // Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[2],
                                    // cardShadingColor: '#011f4b',
                                    LearnWhat: '',
                                    ImageAsset: 'assets/images/level_3.png',
                                    fun: (){
                                      _Advanced();
                                    },
                                  ),
                                  onTapDown: (_) {
                                    setState(() {
                                      lightOfContainer[2] = true;
                                    });
                                  },
                                  onTapUp: (_) {
                                    setState(() {
                                      lightOfContainer[2] = false;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      lightOfContainer[2] = false;
                                    });
                                  },
                                ),
                                Text(
                                  'Advanced',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate)
                              .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                          const Expanded(flex: 1, child: SizedBox()),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[3],
                                    // cardShadingColor: '#011f4b',
                                    LearnWhat: '',
                                    ImageAsset: 'assets/images/level_4.png',
                                    fun: (){
                                      _Challenge();
                                    },
                                  ),
                                  onTapDown: (_) {
                                    setState(() {
                                      lightOfContainer[3] = true;
                                    });
                                  },
                                  onTapUp: (_) {
                                    setState(() {
                                      lightOfContainer[3] = false;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      lightOfContainer[3] = false;
                                    });
                                  },
                                ),
                                AutoSizeText(
                                  'Challenge',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate)
                              .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                          // Expanded(flex: 1, child: SizedBox()),
                        ],
                      ),
                      Row(
                        children: [
                          // Expanded(flex: 1, child: SizedBox()),
                          const Expanded(flex: 5, child: SizedBox()),
                          Expanded(
                            flex: 9,
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[4],
                                    // cardShadingColor: '#011f4b',
                                    LearnWhat: '',
                                    ImageAsset: 'assets/images/level_5.png',
                                    fun: (){
                                      _Additional();
                                    },
                                  ),
                                  onTapDown: (_) {
                                    setState(() {
                                      lightOfContainer[4] = true;
                                    });
                                  },
                                  onTapUp: (_) {
                                    setState(() {
                                      lightOfContainer[4] = false;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      lightOfContainer[4] = false;
                                    });
                                  },
                                ),
                                const AutoSizeText(
                                  'Additional',
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate)
                              .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                          const Expanded(flex: 5, child: SizedBox()),
                          // Expanded(flex: 1, child: SizedBox()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        )
      ),
    );
  }
}
