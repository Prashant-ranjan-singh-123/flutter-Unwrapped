import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../frequent_used_widget/app_bar.dart';
import '../../frequent_used_widget/errors_display.dart';
import '../../frequent_used_widget/moving_background.dart';
import 'Beginner_level/beginner_level.dart';

class WidgetScreen extends StatefulWidget {
  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  void beginner_button(){
    Get.to(const BeginnerLevelWidget(),transition: Transition.fadeIn, duration: const Duration(milliseconds: 500));
  }

  void advance_button(){
    ErrorDisplay().showUnderConstructionDialog();
  }

  List<bool> lightOfContainer = [false, false];
  List<String> lightOfContainerColor = ['#011f4b','#011f4b'];

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
      lightOfContainer = [true, true];
      setState(() {});
      int times=4;
      for(int i = 0; i<times;++i){
        await Future.delayed(const Duration(milliseconds: 180),() async {
          lightOfContainer = [false, false];
          setState(() {});
          await Future.delayed(const Duration(milliseconds: 180),(){
            lightOfContainer = [true, true];
            setState(() {});
          });
        });
      }
    });
    lightOfContainer = [false, false];
  }

  @override
  void initState() {
    print('Init State Called');
    lightOnOff();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setColor();
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: const AutoSizeText(
                  'Widget Info',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        const AutoSizeText(
                          'Widgets Brief,',
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
                        const SizedBox(height: 5,),
                        const Text(
                          'Widgets are at the core of Flutter development, providing a flexible and efficient way to build beautiful and responsive user interfaces for various platforms. Understanding how to create and manipulate widgets is essential for building Flutter applications.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w100,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        const SizedBox(height: 45,),
                        AutoSizeText(
                          '1) Beginner Level Widgets',
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
                        const SizedBox(height: 5,),
                        const Text(
                          'Ever wondered how we build the foundation of your favorite apps? We use core widgets like Scaffolds, that act like walls and sections, to structure everything you see and interact with on the screen, in this i will list all Beginners level widgets.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w100,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 5,
                              child: InkWell(
                                child: GestureDetector(
                                  child: beautifulLottieCard(
                                    // widthIs: Get.width * 0.8,
                                    heightIs: 157,
                                    cardColor: '#011f4b',
                                    cardShadingColor: lightOfContainerColor[0],
                                    LearnWhat: 'Beginner Level',
                                    ImageAsset: 'assets/images/beginer_widget.png',
                                    fun: (){
                                      beginner_button();
                                    },
                                  ).animate()
                                      .scale(duration: 400.ms, curve: Curves.decelerate)
                                      .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
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
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        const SizedBox(height: 45,),
                        const AutoSizeText(
                          '2) Intermediate Level Widgets',
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
                        const SizedBox(height: 5,),
                        const Text(
                          "Scaffold widgets are the app's foundation, like walls and sections. As we build your app, we'll incorporate third party widgets and animations which make your app more stylish, in this i will list some of those widgets.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w100,
                            height: 0,
                          ),
                        ).animate()
                            .scale(duration: 400.ms, curve: Curves.decelerate),
                        const SizedBox(height: 25,),
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
                                  LearnWhat: 'Intermediate Level',
                                  ImageAsset: 'assets/images/advance_widget.png',
                                  fun: (){
                                    advance_button();
                                  },
                                ).animate()
                                    .scale(duration: 400.ms, curve: Curves.decelerate)
                                    .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),
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
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                        // GestureDetector(
                        //   onTap: (){
                        //     beginner_button();
                        //   },
                        //   child: beautifulLottieCard(
                        //     // widthIs: Get.width * 0.8,
                        //     heightIs: Get.width * 0.6,
                        //     cardColor: '#011f4b',
                        //     cardShadingColor: '#6497b1',
                        //     LearnWhat: 'Beginner Level',
                        //     ImageAsset: 'assets/images/beginer_widget.png',
                        //   ),
                        // ),
                        // GestureDetector(
                        //   onTap: (){
                        //     advance_button();
                        //   },
                        //   child: beautifulLottieCard(
                        //     // widthIs: Get.width * 0.8,
                        //     heightIs: Get.width * 0.6,
                        //     cardColor: '#011f4b',
                        //     cardShadingColor: '#6497b1',
                        //     LearnWhat: 'Advance level',
                        //     ImageAsset: 'assets/images/advance_widget.png',
                        //   ),
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
