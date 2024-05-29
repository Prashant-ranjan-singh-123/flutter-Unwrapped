import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../frequent_used_widget/moving_background.dart';
import '../../../home_screen/section_4_interview/flutter_interview/difficulty_section/difficulty_screen.dart';

class FlytterInterviewBottomNav extends StatefulWidget {
  int pageNumber;
  FlytterInterviewBottomNav({Key? key, required this.pageNumber}) : super(key: key);

  @override
  State<FlytterInterviewBottomNav> createState() => _FlytterInterviewBottomNavState();
}

class _FlytterInterviewBottomNavState extends State<FlytterInterviewBottomNav> {
  var currentIndex = 0;
  late PageController pageController;
  List<Widget> pages = [
    DifficultyScreen(screenNum: 0),
    DifficultyScreen(screenNum: 1),
    DifficultyScreen(screenNum: 2),
    DifficultyScreen(screenNum: 3),
    DifficultyScreen(screenNum: 4),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.pageNumber;
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: pages,
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: GNav(
              backgroundColor: Colors.black.withOpacity(0.7),
              color: Colors.white,
              activeColor: Colors.white,
              duration: Duration(milliseconds: 400),
              gap: 8,
              padding: EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              hoverColor: Colors.black12,
              tabBackgroundColor: HexColor('#022659'),
              tabBorderRadius: 10,
              curve: Curves.easeInOutCirc,
              selectedIndex: currentIndex,
              onTabChange: (index) {
                pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 5),
                  curve: Curves.easeInOutCirc,
                );
              },
              tabs: [
                const GButton(icon: Icons.person_4, text: 'Level 1'),
                GButton(icon: MdiIcons.brain, text: 'Level 2'),
                GButton(icon: MdiIcons.spaceInvaders, text: 'Level 3'),
                GButton(icon: MdiIcons.alien, text: 'Level 4'),
                GButton(icon: MdiIcons.thoughtBubble, text: 'Level 5'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
