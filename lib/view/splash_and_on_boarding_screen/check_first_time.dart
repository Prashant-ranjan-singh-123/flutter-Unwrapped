import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../nav_bar_screens/bottom_nav_bar_main_screen.dart';
import 'on_boarding/config_on_boarding_page.dart';


class CheckFirstTime extends StatefulWidget {
  const CheckFirstTime({Key? key});

  @override
  State<CheckFirstTime> createState() => _CheckFirstTimeState();
}

class _CheckFirstTimeState extends State<CheckFirstTime> {
  late Future<bool> isFirstRun;
  @override
  void initState() {
    super.initState();
    isFirstRun = ifFirstRun();
  }

  Future<bool> ifFirstRun() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstRun = prefs.getBool('isFirst') ?? true;
    if (isFirstRun) {
      await prefs.setBool('isFirst', false);
      return true;
    } else {
      // await prefs.setBool('isFirst', true);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: ifFirstRun(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          if(isFirstRun==true){
            return const OnBoardingScreen();
          }else if (snapshot.data == true) {
            return const OnBoardingScreen();
          }else {
            return const HomePage();
          }
        }
      },
    );
  }
}

