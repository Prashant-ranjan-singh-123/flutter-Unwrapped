import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../frequent_used_widget/moving_background.dart';
import '../../../home_screen/section_1_install_flutter/mac_os_installation.dart';
import '../../../home_screen/section_1_install_flutter/windows_installation.dart';

class BottomNavBarInstallFlutter extends StatefulWidget {
  const BottomNavBarInstallFlutter({Key? key}) : super(key: key);

  @override
  State<BottomNavBarInstallFlutter> createState() => _BottomNavBarInstallFlutterState();
}

class _BottomNavBarInstallFlutterState extends State<BottomNavBarInstallFlutter> {
  var currentIndex = 0;
  late PageController pageController;
  List<Widget> pages = [
    const WindowsInstallation(),
    const MacOsInstallation(),
    // LinuxInstallation()
  ];
  IconData iconDataWindows = MdiIcons.microsoftWindows;
  IconData iconDataMac = MdiIcons.apple;


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
              duration: const Duration(milliseconds: 400),
              gap: 8,
              padding: const EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              hoverColor: Colors.black12,
              tabBackgroundColor: HexColor('#022659'),
              tabBorderRadius: 10,
              curve: Curves.easeInOutCirc,
              selectedIndex: currentIndex,
              onTabChange: (index) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 5),
                  curve: Curves.easeInOutCirc,
                );
              },
              tabs: [
                GButton(icon: iconDataWindows, text: 'Windows'),
                GButton(icon: iconDataMac, text: 'MacOS'),
                // GButton(icon: Icons.laptop_windows_sharp, text: 'Linux'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
