import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterunwrapped/view/home_screen/section_2_first_app/First_app.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../frequent_used_widget/app_bar.dart';
import '../../frequent_used_widget/moving_background.dart';
import '../nav_bar_screens/home_screen/section_1_install_area/install_flutter_bottom_nav_bar.dart';
import '../nav_bar_screens/home_screen/section_3_concept/concept_bottom_nav_bar.dart';
import '../nav_bar_screens/home_screen/section_4_interview/main_interview_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void Learn_flutter_fun(){
    Get.to(const BottomNavBarInstallFlutter(),transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 100));
  }

  void first_app_fun(){
    Get.to(const FirstApp(),transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 100));
    // ErrorDisplay().showUnderConstructionDialog();
  }

  void flutter_concept_fun(){
    Get.to(ConceptExplainBottomNav(pageNum: 0,),transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 100));
  }

  void dart_concept_fun(){
    Get.to(ConceptExplainBottomNav(pageNum: 1,),transition: Transition.rightToLeftWithFade, duration: const Duration(milliseconds: 100));
  }

  void flutter_interview_fun(){
    Get.to(InterviewBottomNav(pageNumber: 0,),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }

  void dart_interview_fun(){
    Get.to(InterviewBottomNav(pageNumber: 1,),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }

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
        // backgroundColor: HexColor('#011f4b').withOpacity(0.9),
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Padding(
                padding: EdgeInsets.only(top: 10),
                child: const AutoSizeText(
                  'Study Material',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ).animate()
                    .scale(duration: 400.ms, curve: Curves.decelerate),
              ),
              centerTitle: true,
              backgroundColor: HexColor('#011f4b').withOpacity(0),
              floating: true, // App bar will be floating
              snap: true, // App bar will snap into view when scrolled up
              // Set the app bar's height when it is collapsed
              collapsedHeight: kToolbarHeight,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        AutoSizeText(
                          maxLines: 1,
                          'Hello Developers,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Oswald',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        const SizedBox(height: 5,),
                        const AutoSizeText(
                          maxLines: 1,
                          'Lets Learn how to install Flutter,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 5,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[0],
                                  LearnWhat: 'Install Flutter',
                                  ImageAsset: 'assets/images/flutter_logo.png',
                                  fun: () {
                                    Learn_flutter_fun();
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
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        const SizedBox(height: 60,),
                        const AutoSizeText(
                          maxLines: 1,
                          'Lets Write First App,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        Row(
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 5,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[1],
                                  LearnWhat: 'First App',
                                  ImageAsset: 'assets/images/advance_widget.png',
                                  fun: (){
                                    first_app_fun();
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
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        const SizedBox(height: 60,),
                        AutoSizeText(
                          'Now it’s Time to learn Basic,',
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        Row(
                          children: [
                            // Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 9,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[2],
                                  LearnWhat: 'Flutter Concept',
                                  ImageAsset: 'assets/images/flutter_logo.png',
                                  fun: (){
                                    flutter_concept_fun();
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
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 9,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[3],
                                  LearnWhat: 'Dart Concept',
                                  ImageAsset: 'assets/images/dart_logo.png',
                                  fun: (){
                                    dart_concept_fun();
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
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            // Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        const SizedBox(height: 60,),
                        const AutoSizeText(
                          'Some Catch Up with Questions,',
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        Row(
                          children: [
                            // Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 9,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[4],
                                  LearnWhat: 'Interview Dart',
                                  ImageAsset: 'assets/images/dart_logo.png',
                                  fun: (){
                                    dart_interview_fun();
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
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 9,
                              child: GestureDetector(
                                child: beautifulLottieCard(
                                  // widthIs: Get.width * 0.8,
                                  heightIs: 157,
                                  cardColor: '#011f4b',
                                  cardShadingColor: lightOfContainerColor[5],
                                  LearnWhat: 'Interview Flutter',
                                  ImageAsset: 'assets/images/flutter_logo.png',
                                  fun: (){
                                    flutter_interview_fun();
                                  },
                                ),
                                onTapDown: (_) {
                                  setState(() {
                                    lightOfContainer[5] = true;
                                  });
                                },
                                onTapUp: (_) {
                                  setState(() {
                                    lightOfContainer[5] = false;
                                  });
                                },
                                onTapCancel: () {
                                  setState(() {
                                    lightOfContainer[5] = false;
                                  });
                                },
                              ),
                            ).animate()
                                .scale(duration: 400.ms, curve: Curves.decelerate)
                                .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
                            // Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        // beautifulLottieCard(
                        //   widthIs: Get.width * 0.8,
                        //   heightIs: Get.width * 0.6,
                        //   cardColor: '#011f4b',
                        //   cardShadingColor: '#6497b1',
                        //   LearnWhat: 'Learn Flutter',
                        //   ImageAsset: 'assets/images/flutter_logo.png',
                        // ),
                        // beautifulLottieCard(
                        //   widthIs: Get.width * 0.8,
                        //   heightIs: Get.width * 0.6,
                        //   cardColor: '#011f4b',
                        //   cardShadingColor: '#6497b1',
                        //   LearnWhat: 'Learn Dart',
                        //   ImageAsset: 'assets/images/dart_logo.png',
                        // ),
                        // beautifulLottieCard(
                        //   widthIs: Get.width * 0.8,
                        //   heightIs: Get.width * 0.6,
                        //   cardColor: '#011f4b',
                        //   cardShadingColor: '#6497b1',
                        //   LearnWhat: 'Interview Flutter',
                        //   ImageAsset: 'assets/images/interview_flutter.png',
                        // ),
                        // beautifulLottieCard(
                        //   widthIs: Get.width * 0.8,
                        //   heightIs: Get.width * 0.6,
                        //   cardColor: '#011f4b',
                        //   cardShadingColor: '#6497b1',
                        //   LearnWhat: 'Interview Dart',
                        //   ImageAsset: 'assets/images/interview_dart.png',
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}