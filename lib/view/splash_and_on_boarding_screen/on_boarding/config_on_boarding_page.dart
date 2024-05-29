import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
import '../../nav_bar_screens/bottom_nav_bar_main_screen.dart';
import 'on_boarding_pages.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    List pages;
    pages = [
      OnboardingPage(
        title: 'Learn Flutter',
        body:
            "This app is your comprehensive guide to mastering Flutter. "
            ", learn by exploring interactive UI screens with code breakdowns."
            "We'll also guide you through installing Flutter on your device (Windows/macOS).",
        lottie: 'assets/onboarding_learn.json',
        zoom: 1.5,
      ),
      OnboardingPage(
        title: 'Open Source',
        body:
            "This app is open-source, which means you're not just learning, "
            "you're part of something bigger!  Explore the code, suggest "
            "improvements, or even create your own UI screens to contribute "
            "back to the app.",
        lottie: 'assets/onboarding_ui_kit.json',
        zoom: 2,
      ),
      OnboardingPage(
        title: 'Train Your Brain',
        body:
            "This isn't your ordinary math class. We make learning fun and "
            "engaging with interactive games that challenge your mind and "
            "boost your cognitive abilities.",
        lottie: 'assets/onboarding_open_source.json',
        zoom: 1,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
              onPageChanged: (int val) {
                if (val == 0) {
                  isLast = false;
                  isFirst = true;
                }
                if (val == 2) {
                  isLast = true;
                  isFirst = false;
                }
                if (val != 2 && val != 0) {
                  isLast = false;
                  isFirst = false;
                }
                setState(() {
                  isLast;
                  isFirst;
                });
              },
              controller: controller,
              children: List.generate(pages.length, (index) => pages[index]),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.96),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!isFirst)
                  InkWell(
                      onTap: () {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.amberAccent.shade200,
                        child: const Icon(
                          Icons.navigate_before,
                          color: Colors.black,
                        ),
                      ))
                else
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                  ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ScrollingDotsEffect(
                      dotColor: Colors.white,
                      activeDotColor: Colors.amberAccent.shade200,
                      fixedCenter: true,
                      dotWidth: 5,
                      activeDotScale: 1.1,
                      dotHeight: 5),
                ),
                if (!isLast)
                  InkWell(
                      onTap: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.amberAccent.shade200,
                        child: const Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      ))
                else
                  InkWell(
                      onTap: () {
                        Get.off(const HomePage(),
                            transition: Transition.zoom,
                            duration: const Duration(milliseconds: 450));
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.amberAccent.shade200,
                        child: const Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      ))
              ],
            ),
          )
              .animate(delay: 1000.ms)
              .scale(duration: 1400.ms, curve: Curves.decelerate),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: SvgPicture.asset(
          //     'assets/onboarding/wave.svg',
          //     color: Theme.of(context).colorScheme.primary,
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // ),
        ],
      ),
    );
  }
}
