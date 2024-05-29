import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../frequent_used_widget/app_bar.dart';
import '../../../frequent_used_widget/moving_background.dart';
import '../section_1_install_flutter/common_widget/information_area.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
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
                        const AutoSizeText(
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
                        const SizedBox(height: 40,),
                        Row(
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            Expanded(
                              flex: 2,
                              child: const AutoSizeText(
                                maxLines: 7,
                                textAlign: TextAlign.right,
                                "Let's dive into building a basic Flutter app to grasp the fundamentals! We'll use Android Studio as our development environment. Here's a breakdown of the steps involved:",
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
                        const SizedBox(height: 40,),
                        Center(
                          child: const AutoSizeText(
                            maxLines: 1,
                            'First App',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ).animate()
                              .scale(duration: 400.ms, curve: Curves.decelerate),
                        ),
                        InformationBox().CardTextAndImageDis(
                            stepNum: '1',
                            Content: "First, fire up the program. Then, head over to the 'File' menu at the top and pick 'New.' From there, you should see an option for 'New Flutter Project.' Click on that, and you'll be well on your way.",
                            PathOfImage: 'assets/images/intro_screen_image_1.png',
                            dis: 'hello'
                        ),
                        InformationBox().CardTextAndImage(
                            stepNum: '2',
                            Content: "Up next, choose \"Flutter Application\" and hit \"Next\" to continue creating your project.",
                            PathOfImage: 'assets/images/intro_screen_image_2.png'
                        ),
                        InformationBox().CardTextAndImageDis(
                            stepNum: '3',
                            Content: """Next, configure the application details as shown below after doing all configuration click create.


1) Project Name: Write your Application Name.

2) Project Location: <path_to_save_files>

3) Descriptions: <A new Flutter hello world application>

4) Project Type: Application (Default)

5) Organisation: <package_id_of_app>""",
                            PathOfImage: 'assets/images/intro_screen_image_3.png',
                            dis: 'Hit "Finish" and let the magic happen! In a sec, you\'ll have a fresh Flutter project ready to customize.'
                        ),
                        InformationBox().CardTextWithCommand(
                            stepNum: '4',
                            Content: 'Replace main.dart file with following Script.\n',
                            Command: """import 'package:flutter/material.dart';  void main() => runApp(MyApp());  class MyApp extends StatelessWidget {   // This widget is the root of your application.   @override   Widget build(BuildContext context) {     return MaterialApp(       title: 'Hello World Flutter Application',       theme: ThemeData(         // This is the theme of your application.         primarySwatch: Colors.blue,       ),       home: MyHome(title: 'Home page'),     );   } }  class MyHome extends StatelessWidget {   String title;   MyHome({super.key, required this.title});    @override   Widget build(BuildContext context) {     return Scaffold(       appBar: AppBar(         title: Text(title),       ),       body: const Center(         child: Text('Mine First Flutter App'),       ),     );   } }"""
                        ),
                        InformationBox().CardTextAndImage(
                            stepNum: '5',
                            Content: 'Let\'s see it in action! Hit Run->Run main.dart to launch your app.',
                            PathOfImage: 'assets/images/intro_screen_image_4.png'
                        ),
                        InformationBox().CardTextAndImage(
                            stepNum: '6',
                            Content: 'Check On Emulator',
                            PathOfImage: 'assets/images/intro_screen_image_5.png'
                        ),
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
