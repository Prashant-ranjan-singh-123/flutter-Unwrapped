import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../frequent_used_widget/moving_background.dart';
import '../home_screen/home_screen.dart';
import '../learn_widgets_screen/widgets_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../ui_kit/ui_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  late PageController pageController;
  List<Widget> pages = [
    HomeScreen(),
    WidgetScreen(),
    UiKit(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
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
                GButton(icon: MdiIcons.home, text: 'Home'),
                GButton(icon: MdiIcons.atomVariant, text: 'Widgets'),
                GButton(icon: MdiIcons.store, text: 'UI Kit'),
                const GButton(icon: Icons.person_4_sharp, text: 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
